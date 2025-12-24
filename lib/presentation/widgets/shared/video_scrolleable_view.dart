import 'package:flutter/material.dart';
import 'package:reelshort/domain/entities/video_posts.entitie.dart';

class VideoScrolleableView extends StatelessWidget {
  final List<VideoPosts> customFeedVideos;

  const VideoScrolleableView({super.key, required this.customFeedVideos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [Container(color: Theme.of(context).colorScheme.surface)],
    );
  }
}
