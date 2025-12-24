import 'package:flutter/material.dart';
import 'package:reelshort/domain/entities/video_posts.entitie.dart';

class FeedProvider extends ChangeNotifier {
  bool initalLoading = true;
  List<VideoPosts> videos = [];

  Future<void> loadNextPage() async {
    //todo: cargar videos

    notifyListeners();
  }
}
