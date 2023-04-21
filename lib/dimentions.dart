import 'package:get/get.dart';

class Dimentions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //3.94 here will be used as a constant, or scaller it
  // it is gotten from the screen height 866/220 the (pageview container size

  static double pageContainer = screenHeight / 2.71;
  static double pageViewContainer = screenHeight / 3.94;
  static double pageViewTextContainer = screenHeight / 7.23;

  //Screen Height
  static double Height10 = screenHeight / 86.6;
  static double Height20 = screenHeight / 43.3;
  static double Height15 = screenHeight / 57.7;
  static double Height30 = screenHeight / 28.9;
  static double Height45 = screenHeight / 19.2;

  //Screen Width
  static double width10 = screenHeight / 86.6;
  static double width20 = screenHeight / 43.3;
  static double width15 = screenHeight / 57.7;
  static double width30 = screenHeight / 28.9;

  //866/120

  static double font20 = screenHeight / 43.3;
  static double raduis20 = screenHeight / 43.3;
  static double raduis30 = screenHeight / 28.9;
  static double raduis15 = screenHeight / 57.7;

  static double iconSize24 = screenHeight / 36;
}
