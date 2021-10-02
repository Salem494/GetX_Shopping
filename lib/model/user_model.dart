
class UserModel{
  late String userId,name,email,pic;

  UserModel({ required this.userId,required this.name,required  this.email,required this.pic});

     UserModel.fromJson(Map<String,dynamic> json){
      if(json == null){
        return ;
      }
        UserModel(
         userId: json['userId'],
         email:  json['email'],
         name: json['name'],
         pic:  json['pic'],
       );
     }
     toJson(){
       return {
         'userId':userId,
         'email': email,
         'pic':pic,
         'name':name
       };
     }
  }

