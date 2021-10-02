
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_now/model/user_model.dart';

class FireStoreUser {

  final CollectionReference collectionReference = FirebaseFirestore.instance.collection('Users');

    Future<void> addUserTooFireStore(UserModel userModel) async {

  return await collectionReference.doc(userModel.userId).set(userModel.toJson());

}


}