// Make sure to add following packages to pubspec.yaml:
// * media_kit
// * media_kit_video
// * media_kit_libs_video
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_kit/media_kit.dart'; // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart'; // Provides [VideoController] & [Video] etc.

import '../../../../data/datasources/remote/remote_data_sevices.dart';

import '../../../../core/common_widgets/first_app_bar.dart';

import '../viewmodels/video_viewmodel.dart';
import '../../data/repositories/video_repository.dart';

import 'package:flutter/foundation.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  VideoPlayerScreen({
    super.key,
    required this.matiere,
    required this.nameOnDataBase,
    required this.title,
  });

  final String matiere;
  final String nameOnDataBase;
  final String title;
  //final SupabaseClient supabase = RemoteDataServices.instance.supabase;
  final VideoViewmodel videoViewmodel = VideoViewmodel(
    VideoRepositoryImpl(RemoteDataServices.instance.supabase),
  );

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
      debugPrint('**********************************************************');
      debugPrint('in stream error');
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
    _initVideo();
    //await _initVideoAsync();
  }

  /*
  Future<void> _initVideoAsync() async {
    final String signedUrl = await widget.supabase.storage
        .from('pc')
        .createSignedUrl('element_chimique.mp4', 3600) as String;

    player.open(Media(signedUrl));
  }
  */

  Future<void> _initVideo() async {
    final publicUrl = widget.videoViewmodel.getPublicUrl(
      widget.matiere,
      widget.nameOnDataBase,
    );

    if (publicUrl != null) {
      await player.open(Media(publicUrl), play: true);
    } else {
      setState(() {
        errorMessage = 'URL de la vidéo non disponible';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FirstAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
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
                          Text(
                            errorMessage!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          ElevatedButton(
                            onPressed: () => _initVideo(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              padding: EdgeInsets.all(8),
                            ),
                            child: const Text('Réessayer'),
                          ),
                        ],
                      )
                      : Video(controller: controller),
            ),
            const SizedBox(height: 20),
            Text(
              widget.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
