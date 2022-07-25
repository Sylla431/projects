import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/controllers/popular_product_contoller.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init()async{
  Get.lazyPut(()=>ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}