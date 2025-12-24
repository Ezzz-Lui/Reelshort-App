import 'package:flutter/material.dart';
import 'package:reelshort/domain/entities/video_posts.entitie.dart';
import 'package:reelshort/presentation/widgets/shared/video_buttons.dart';

class VideoScrolleableView extends StatelessWidget {
  final List<VideoPosts> customFeedVideos;

  const VideoScrolleableView({super.key, required this.customFeedVideos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: customFeedVideos.length,
      itemBuilder: (context, index) {
        final videoPost = customFeedVideos[index];
        return Stack(
          children: [
            //video Player

            //Gradient

            //Buttons
            Positioned(
              bottom: 50,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
