import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reelshort/presentation/providers/feed_provider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final feedProvider = context.watch<FeedProvider>();

    return Scaffold(
      body: feedProvider.initalLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : const Placeholder(),
    );
  }
}
