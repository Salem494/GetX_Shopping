import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/model/category_model.dart';
import 'package:shopping_now/view_model/HomeView_model.dart';

import 'categories_type_widgets/Categories_collection.dart';
import 'custom_text.dart';

class BuildCategory extends GetWidget<HomeViewModel> {
  final HomeViewModel homeViewModel = Get.put(HomeViewModel());
  List<CategoryModel> category = [
    CategoryModel(
        name: 'T-shirt',
        image: 'assets/assets/tshirt.png',
        onClick: () {
          Get.to(tShirtsWidget());
        }),
    CategoryModel(
        name: 'Jackets',
        image: 'assets/assets/jacket.png',
        onClick: () {
          Get.to(jacketsWidgets());
        }),
    CategoryModel(
        name: 'Shoes',
        image: 'assets/assets/running.png',
        onClick: () {
          Get.to(shoesWidgets());
        }),
    CategoryModel(
        name: 'Trousers',
        image: 'assets/assets/trousers.png',
        onClick: () {
          Get.to(trousersWidgets());
        }),
    CategoryModel(
        name: 'Hats M&W',
        image: 'assets/assets/cap.png',
        onClick: () {
          Get.to(CatWidgets());
        }),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      // ignore: unrelated_type_equality_checks
      builder: (controller) => category.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                child: ListView.separated(
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        category[index].onClick();
                      },
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade100,
                            ),
                            height: 60,
                            width: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(category[index].image),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            text: category[index].name,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                ),
              ),
            ),
    );
  }
}
