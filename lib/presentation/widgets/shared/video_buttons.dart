import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:reelshort/config/helpers/count_formatter.dart';
import 'package:reelshort/domain/entities/video_posts.entitie.dart';

class VideoButtons extends StatelessWidget {
  final VideoPosts video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          iconColor: Theme.of(context).colorScheme.onPrimaryContainer,
          iconData: Icons.favorite,
          value: video.likes,
        ),
        SizedBox(height: 10),
        _CustomIconButton(
          iconColor: Theme.of(context).colorScheme.onPrimaryContainer,
          iconData: Icons.remove_red_eye_outlined,
          value: video.views,
        ),
        SizedBox(height: 10),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 3),
          child: _CustomIconButton(
            iconColor: Theme.of(context).colorScheme.onPrimaryContainer,
            iconData: Icons.play_circle_outlined,
            value: 0,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, color: color),
        ),
        if (value > 0)
          Text(CountFormatter.countFormatterNumber(value.toDouble())),
      ],
    );
  }
}
