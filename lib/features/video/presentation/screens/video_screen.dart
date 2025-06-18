// Make sure to add following packages to pubspec.yaml:
// * media_kit
// * media_kit_video
// * media_kit_libs_video
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_kit/media_kit.dart'; // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart'; // Provides [VideoController] & [Video] etc.

import 'package:supabase_flutter/supabase_flutter.dart';

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  const VideoPlayerScreen({super.key, this.supabase, this.bucket, this.name});

  final SupabaseClient? supabase;
  final String? bucket;
  final String? name;
  @override
  ConsumerState<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen> {
  // Create a [Player] to control playback.
  late final player = Player();
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].

    _initialize();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future<void> _initialize() async {
    await _checkPermissions();
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

  void _initVideo() {
    final String publicUrl =
        widget.supabase?.storage
                .from(widget.bucket as String)
                .getPublicUrl(widget.name as String)
            as String;

    player.open(Media(publicUrl), play: false);
  }

  void _errorMessageVideo() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Impossible de lire les videos'),
        backgroundColor: Colors.red,
      ),
    );
  }

  // Fonction pour vérifier si Android 13 ou supérieur
  Future<bool> _isAndroid13OrHigher() async {
    if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.version.sdkInt >= 33; // Android 13 = API 33
    }
    return false; // Retourne false si ce n'est pas Android
  }

  Future<void> _checkPermissions() async {
    if (await _isAndroid13OrHigher()) {
      // Video permissions.
      if (await Permission.videos.isDenied ||
          await Permission.videos.isPermanentlyDenied) {
        final state = await Permission.videos.request();
        if (!state.isGranted) {
          _errorMessageVideo();
        }
      }
      // Audio permissions.
      if (await Permission.audio.isDenied ||
          await Permission.audio.isPermanentlyDenied) {
        final state = await Permission.audio.request();
        if (!state.isGranted) {
          _errorMessageVideo();
        }
      }
    } else {
      if (await Permission.storage.isDenied ||
          await Permission.storage.isPermanentlyDenied) {
        final state = await Permission.storage.request();
        if (!state.isGranted) {
          _errorMessageVideo();
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 9.0 / 16.0,
        // Use [Video] widget to display video output.
        child: Video(controller: controller),
      ),
    );
  }
}
