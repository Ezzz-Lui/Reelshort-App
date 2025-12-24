class VideoPosts {
  final String name;
  final String videoURL;
  final int likes;
  final int views;

  VideoPosts({
    required this.name,
    required this.videoURL,
    this.likes = 0,
    this.views = 0,
  });
}
