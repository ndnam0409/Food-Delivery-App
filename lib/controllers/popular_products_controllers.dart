import 'package:food_delivery/data/repository/popular_products_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
   final PopularProductRepo popularProductRepo;
   PopularProductController({required this.popularProductRepo});
   List<dynamic> _popularProductList = [];
   // ignore: non_constant_identifier_names
   List<dynamic> get PopularProductList => _popularProductList;

   Future<void> getPopularProductsList() async{
    Response response = await popularProductRepo.getPopularProductsList();
    if (response.statusCode == 200){
      _popularProductList = [];
      //_popularProductList.addAll();
      update();
    }else{

    }
   }
}