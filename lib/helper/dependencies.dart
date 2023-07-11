import 'package:food_delivery/controllers/popular_products_controllers.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/popular_products_repo.dart';
import 'package:get/get.dart';

Future<void> init()async {
  // API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbecstech.com"));

  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}