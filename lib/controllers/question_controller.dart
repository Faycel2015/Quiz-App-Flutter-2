import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// We use get package for our state management

class QuestionController extends GetxController with SingleGetTickerProviderMixin {
  // Lets animated our progress bar

  AnimationController _animationController;
  Animation _animation;
  // so that we can access our animation outside
  Animation get animation => this._animation;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 60s
    // So our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // Update like setState
        update();
      });

    // Start our animation
    _animationController.forward();

    super.onInit();
  }
}