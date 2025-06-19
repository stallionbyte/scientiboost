// Make sure to add following packages to pubspec.yaml:
// * media_kit
// * media_kit_video
// * media_kit_libs_video
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_kit/media_kit.dart'; // Provides [Player], [Media], [Playlist] etc.
import 'package:media_kit_video/media_kit_video.dart'; // Provides [VideoController] & [Video] etc.

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../data/datasources/remote/remote_data_sevices.dart';

import '../../../../core/common_widgets/first_app_bar.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  VideoPlayerScreen({super.key, this.bucket, this.nameOnDataBase, this.title});

  final String? bucket;
  final String? nameOnDataBase;
  final String? title;
  final SupabaseClient supabase = RemoteDataServices.instance.supabase;
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
    final String publicUrl = widget.supabase.storage
        .from(widget.bucket as String)
        .getPublicUrl(widget.nameOnDataBase as String);

    player.open(Media(publicUrl), play: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FirstAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 9.0 / 16.0,
              // Use [Video] widget to display video output.
              child: Video(controller: controller),
            ),

            SizedBox(height: 20),

            if (widget.title != null) Text(widget.title as String),
          ],
        ),
      ),
    );
  }
}
