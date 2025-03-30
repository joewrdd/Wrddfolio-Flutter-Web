import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PortfolioVideoPlayer extends StatefulWidget {
  const PortfolioVideoPlayer({
    super.key,
    required this.tag,
    required this.videoPath,
    this.width,
    this.height,
  });

  final String tag;
  final String videoPath;
  final double? width;
  final double? height;

  @override
  State<PortfolioVideoPlayer> createState() => _PortfolioVideoPlayerState();
}

class _PortfolioVideoPlayerState extends State<PortfolioVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    _controller = VideoPlayerController.asset(widget.videoPath);

    try {
      await _controller.initialize();
      _controller.setLooping(true);
      _controller.setVolume(0.0);
      _controller.play();

      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      print('Error initializing video: $e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return Container(
        height: widget.height ?? 90,
        width: widget.width ?? double.infinity,
        color: Colors.black12,
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
