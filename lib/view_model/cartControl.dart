import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/model/product_model.dart';

class CartController extends GetxController {
 var product = <ProductModel>{}.obs;
 get allproduct => product;
 var quintity= 0.obs;

void addProduct(String name,String size,String img,String desc,double price){

   product.add(ProductModel(
     image: img,
     desc: desc,
     sized: size,
     price: price,
     name: name
   ));
   update();
    Get.snackbar('Product Added', 'You Have The ${name} To The Cart',duration: Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
    );
}

void deleteProduct(int index){
  product.remove(index);
  update();
}

 increment(){
  quintity.value++;
  update();
 }
 decrement(){
  if(quintity.value<=0){
    Get.snackbar('Please Dear !', 'Can Not be less than Zero',
    duration: Duration(seconds: 3),
      barBlur: 20,
      isDismissible: true,
      icon: Icon(Icons.alarm)
    );
  }
  quintity.value--;
  update();
 }

}