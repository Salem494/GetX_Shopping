import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_now/model/product_model.dart';
import 'package:shopping_now/model/services/data_dummy.dart';
import 'package:shopping_now/view/Screens/details_screen.dart';


class DataSearching extends SearchDelegate {
  List<ProductModel> search;
  DataSearching({required this.search});

  final TextEditingController controller = TextEditingController();
  void clearSearch(){
    controller.clear();
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear),onPressed: (){
        clearSearch();
      },),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
      Navigator.pop(context);
    },);
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    DummyData data = DummyData();
    late  String query = '';
    final filterSearch =  search.where((element) => element.name.toLowerCase().startsWith(query.toLowerCase())).toList();
    return query.isNotEmpty ? GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: filterSearch.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8),
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Get.offAll(DetailsScreen(
                model:data.items[index],
              ));
            },
            child: Card(
              shadowColor: Colors.grey,
              elevation: 9,
              margin: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    child: Image.asset(
                      data.items[index].image,
                      fit: BoxFit.cover,
                      // height: double.infinity,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    data.items[index].name,
                    style: GoogleFonts.cairo(fontWeight: FontWeight.w700,fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(height: 5,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            // products is out demo list
                            ' \$ ${data.items[index].price}',
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18),
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.shopping_cart_outlined,size: 20,color: Colors.black,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          );
        }): Container();

  }
}