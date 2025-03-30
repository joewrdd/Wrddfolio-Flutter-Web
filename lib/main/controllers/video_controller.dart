import 'package:video_player/video_player.dart';
import 'package:get/get.dart';

class VideoControllerManager extends GetxController {
  //----- Map To Hold Multiple Video Controllers With Their Tags -----
  final Map<String, VideoPlayerController> _controllers = {};
  final Map<String, RxBool> _initializedMap = {};

  //----- Singleton Pattern Using GetX -----
  static VideoControllerManager get instance =>
      Get.find<VideoControllerManager>();

  //----- Initialize A Video With A Unique Tag -----
  Future<void> initVideo(
    String tag,
    String videoPath, {
    bool autoPlay = true,
    bool loop = true,
    double volume = 0.0,
  }) async {
    // Dispose If Already Exists
    if (_controllers.containsKey(tag)) {
      await _controllers[tag]!.dispose();
      _controllers.remove(tag);
      _initializedMap.remove(tag);
    }

    try {
      // Create Initialized Status Tracker
      _initializedMap[tag] = false.obs;

      // Create And Initialize Controller
      print("Creating controller for: $videoPath");
      final controller = VideoPlayerController.asset(videoPath);
      _controllers[tag] = controller;

      await controller.initialize().catchError((error) {
        print("Error initializing video: $error");
        return;
      });

      if (loop) {
        controller.setLooping(true);
      }

      controller.setVolume(volume);

      _initializedMap[tag]!.value = true;

      if (autoPlay) {
        controller.play();
      }
      print("Video initialized successfully: $tag");
    } catch (e) {
      print("Exception during video initialization: $e");
      // Don't update initialized status if there was an error
    }
  }

  //----- Check If A Specific Video Is Initialized -----
  RxBool isInitialized(String tag) {
    if (!_initializedMap.containsKey(tag)) {
      return false.obs;
    }
    return _initializedMap[tag]!;
  }

  //----- Get A Controller By Tag -----
  VideoPlayerController getController(String tag) {
    if (!_controllers.containsKey(tag)) {
      throw Exception(
        'Video Controller With Tag $tag Not Found. Initialize It First.',
      );
    }
    return _controllers[tag]!;
  }

  //----- Play A Specific Video -----
  void play(String tag) {
    if (_controllers.containsKey(tag) && _initializedMap[tag]!.value) {
      _controllers[tag]!.play();
    }
  }

  //----- Pause A Specific Video -----
  void pause(String tag) {
    if (_controllers.containsKey(tag) && _initializedMap[tag]!.value) {
      _controllers[tag]!.pause();
    }
  }

  //----- Dispose A Specific Video -----
  void disposeVideo(String tag) {
    if (_controllers.containsKey(tag)) {
      _controllers[tag]!.dispose();
      _controllers.remove(tag);
      _initializedMap.remove(tag);
    }
  }

  @override
  void onClose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    _initializedMap.clear();
    super.onClose();
  }

  //----- Check If A Specific Video Controller Exists -----
  bool hasController(String tag) {
    return _controllers.containsKey(tag);
  }
}
