import 'package:get/get.dart';
class Dimension{
static double screenHeight = Get.context!.height;
static double screenWidth = Get.context!.width;

static double pageView= screenHeight/2.56;
static double pageViewContainer= screenHeight/3.72;
static double pageViewTextContainer= screenHeight/6.83;
// Dynamic height padding and margin
static double height10 = screenHeight/82;
static double height15 = screenHeight/54.66;
static double height20 = screenHeight/41;
static double height30 = screenHeight/27.33;
static double height45 = screenHeight/18.22;

// Dynamic width padding and margin
static double width10 = screenHeight/82;
static double width15 = screenHeight/54.66;
static double width20 = screenHeight/41;
static double width30 = screenHeight/27.33;
static double width45 = screenHeight/18.22;

static double font20= screenHeight/41;

static double radius20= screenHeight/41;
static double radius15= screenHeight/54.66;
static double radius30= screenHeight/27.33;

static double iconSize24 = screenHeight/34.16;
}
