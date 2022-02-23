import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  
  @override
  void onInit() {
    durationSplash();
    super.onInit();
  }

  void durationSplash(){
    Timer(const Duration(seconds: 2), () {
        Get.offAllNamed('/home');
    });
  }


}