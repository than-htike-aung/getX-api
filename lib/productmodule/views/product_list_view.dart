import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_mgt_getx/commonmodule/AppColor.dart';
import 'package:state_mgt_getx/commonmodule/AppString.dart';

import '../../next_screen.dart';
import '../controllers/product_controller.dart';

class ProductListView extends StatelessWidget {
  //const ProdcutListView({Key? key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: Obx( () {
        if(productController.isLoading.value)
          return Center(child: CircularProgressIndicator(),);
        else
          return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    Get.to(NextScreen());
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                productController.productList[index].imageLink.toString(),
                                width: 150,
                                height: 100,
                                fit:  BoxFit.fill,
                                color: AppColor.purpleColor,
                                colorBlendMode: BlendMode.color,
                              ),
                            ),
                          ),
                          Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productController.productList[index].name.toString(),
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    productController.productList[index].brand.toString(),
                                    style: TextStyle(fontSize: 14, color: AppColor.grey),
                                  ),
                                  Text(
                                    productController.productList[index].category.toString(),
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColor.grey
                                    ),
                                  ),
                                  Text(
                                    productController.productList[index].productType.toString(),
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColor.grey
                                    ),
                                  )
                                ],
                              )
                          )
                        ],
                      )
                    ],
                  ),
                );
              }
          );
      }),
    );
  }
}
