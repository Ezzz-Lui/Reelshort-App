import 'package:flutter/material.dart';
import 'package:reelshort/data/local_video_posts.dart';
import 'package:reelshort/domain/entities/video_posts.entitie.dart';
import 'package:reelshort/infrastructure/models/local_video_model.dart';

class FeedProvider extends ChangeNotifier {
  //todo: Repository, DataSource

  bool initalLoading = true;
  List<VideoPosts> videos = [];

  Future<void> loadNextPage() async {
    //todo: load videos

    await Future.delayed(const Duration(seconds: 3));

    // Here, we need a list of video posts, so we must get each video from the provider and map, finally we pass each video to List.
    final List<VideoPosts> feedVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(feedVideos);
    initalLoading = true;
    notifyListeners();
  }
}
