class ProductModel {
  late String name, desc, image, sized;
  late double price;

  ProductModel(
      {required this.name,
      required this.desc,
      required this.image,
      required this.sized,
      required this.price});

  ProductModel.fromJson(Map<dynamic, dynamic> json) {
    if (json == null) {
      return;
    }
    ProductModel(
      name: json['name'],
      desc: json['desc'],
      image: json['image'],
      sized: json['sized'],
      price: json['price'],
    );
  }

  toJson() {
    return {
      'name': name,
      'desc': desc,
      'image': image,
      'sized': sized,
      'price': price,
    };
  }
}



