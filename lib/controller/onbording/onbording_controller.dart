import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  PageController pageViewCtrl = PageController();
  int currentIndex = 0;

  changeIndex(int value) {
    currentIndex = value;
    update();
  }

  skipToLastPage(int pageNum) {
    pageViewCtrl.animateToPage(
      pageNum,
      duration: Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  nextPage() {
    currentIndex++;
    pageViewCtrl.animateToPage(currentIndex,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
    update();
  }
}
