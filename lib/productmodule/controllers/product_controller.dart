import 'package:get/get.dart';
import 'package:state_mgt_getx/apimodule/api_service.dart';
import 'package:state_mgt_getx/productmodule/models/product_model.dart';

class ProductController extends GetxController {
    var isLoading = true.obs;
    //var productList =  List<ProductModel>().obs  ;
    List<ProductModel> productList = [];
  //  var productList = [ ].obs as List<ProductModel>;
    @override
  void onInit() {
    // TODO: implement onInit
      fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
      try{
        isLoading(true);
        var products = await ApiService.fetchProducts();
        if(products != null){
          productList.assignAll(products);
        }
      }finally {
        isLoading(false);
      }
  }
}