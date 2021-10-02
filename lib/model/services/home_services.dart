import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {

  final CollectionReference categoryRef = FirebaseFirestore.instance.collection('Categories');
  final CollectionReference productsRef = FirebaseFirestore.instance.collection('Products');

  Future<List<QueryDocumentSnapshot>> getCategory() async {
   var value = await categoryRef.get();
      return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> getBestProduct() async {
    var value = await productsRef.get();
    return value.docs;
  }


}