import 'package:reelshort/domain/entities/video_posts.entitie.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? 'No video name',
        videoUrl: json["videoUrl"] ?? 'No url found',
        likes: json["likes"] ?? 'No likes count found',
        views: json["views"] ?? 'No views count found',
      );

  VideoPosts toVideoPostEntity() =>
      VideoPosts(name: name, videoURL: videoUrl, likes: likes, views: views);
}
