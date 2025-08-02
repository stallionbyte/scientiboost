// Make sure to add following packages to pubspec.yaml:
// * media_kit
// * media_kit_video
// * media_kit_libs_video

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_kit/media_kit.dart'; // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart'; // Provides [VideoController] & [Video] etc.

import 'package:scientiboost/core/common_widgets/first_app_bar.dart';
import 'package:scientiboost/core/providers/providers.dart';
import 'package:scientiboost/core/constants/constants.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  const VideoPlayerScreen({
    super.key,
    required this.matiere,
    required this.nameOnDataBase,
    required this.title,
  });

  final String matiere;
  final String nameOnDataBase;
  final String title;

  @override
  ConsumerState<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen> {
  // Create a [Player] to control playback.
  late final player = Player();
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);

  String? errorMessage;

  @override
  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].
    _initialize();

    // Écouter les erreurs du player
    player.stream.error.listen((error) {
      setState(() {
        errorMessage = "Une erreur s'est produite";
      });
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future<void> _initialize() async {
    // Il n'est plus nécessaire d'avoir une méthode _initVideo séparée.
    // L'état étant un ConsumerState, il a accès à `ref`.
    // Nous utilisons ref.read() car nous sommes dans une méthode de cycle de vie
    // comme initState, et nous n'avons besoin de la valeur qu'une seule fois.
    final videoViewmodel = ref.read(videoViewmodelProvider);

    final publicUrl = videoViewmodel.getPublicUrl(
      widget.matiere,
      widget.nameOnDataBase,
    );

    if (publicUrl != null) {
      // Assurez-vous que getPublicUrl ne retourne pas null
      await player.open(Media(publicUrl), play: true);
      // Réinitialiser l'erreur en cas de succès après une nouvelle tentative
      if (errorMessage != null) {
        setState(() {
          errorMessage = null;
        });
      }
    } else {
      setState(() {
        errorMessage = 'URL de la vidéo non disponible';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: FirstAppBar(), body: SafeArea(child: _buildPage()));
  }

  Widget _buildPage() {
    return Column(
      children: [
        EspConstants.esp40,
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 9.0 / 16.0,
          color: Colors.black,
          // Afficher soit la vidéo, soit un message d'erreur
          child:
              errorMessage != null
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildErrorMessage(message: errorMessage!),
                      _buildRetryButton(),
                    ],
                  )
                  : Video(controller: controller),
        ),
        EspConstants.esp40,
        // titre de la video
        Text(
          widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildRetryButton() {
    return ElevatedButton(
      onPressed: () => _initialize(),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        padding: EdgeInsets.all(8),
      ),
      child: const Text('Réessayer'),
    );
  }

  Widget _buildErrorMessage({required String message}) {
    return Text(
      message,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
