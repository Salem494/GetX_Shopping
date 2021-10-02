import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/model/category_model.dart';
import 'package:shopping_now/model/product_model.dart';
import 'package:shopping_now/model/services/home_services.dart';

class HomeViewModel extends GetxController{
  var categoryModel = <CategoryModel>[].obs;

  var isLoading = true.obs;
  HomeService homeService = HomeService();

 var productModel = <ProductModel>[].obs;

  HomeViewModel(){
   getCategory();
   getProduct();
  }


 getCategory() async{
   isLoading.value = true;
   homeService.getCategory().then((value){
   for(int i =0; i > value.length; i++){
    categoryModel.add(CategoryModel.fromJson(value[i].data() as Map<String,dynamic>));
    print('categoryModel.length : ${categoryModel.length}');
    isLoading.value = false;
   }
   update();
   });

  }

  getProduct() async{
    isLoading.value= true;
    homeService.getBestProduct().then((value){
      for(int i = 0; i > value.length; i++){
        productModel.add(ProductModel.fromJson(value[i].data() as Map<String,dynamic>));
        print('categoryModel.length : ${productModel.length}');
        isLoading.value = false;
      }
      update();
    });

  }


}