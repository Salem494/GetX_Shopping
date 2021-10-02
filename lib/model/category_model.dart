class CategoryModel {
late String name, image;
late Function onClick;

  CategoryModel({ required this.name, required this.image,required this.onClick});

   CategoryModel.fromJson(Map<String,dynamic> json){
     if(json == null){
      return ;
     }
     CategoryModel(
       name:json['name'],
       image:json['image'],
       onClick: json['onClick']
     );

   }


   toJson(){
     return {
         'name': name,
         'image': image,
       'onClick':onClick
     };
   }



}