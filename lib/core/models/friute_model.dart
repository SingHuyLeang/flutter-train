import 'dart:convert';

// loading json from string
List<FriutModel> loadJson(String code) => List<FriutModel>.from(
      json.decode(code).map(
            (data) => FriutModel.fromJson(data),
          ),
    );

class FriutModel {
  int id;
  String name;
  String category;
  String shop;
  String description;
  String image;
  double rating;
  double price;
  int qty;

  FriutModel({
    required this.id,
    required this.name,
    required this.category,
    required this.shop,
    required this.description,
    required this.image,
    required this.rating,
    required this.price,
    required this.qty,
  });

  // convert json object to FriutModel object
  factory FriutModel.fromJson(Map<String, dynamic> json) => FriutModel(
        id: json['id'],
        name: json['name'],
        shop: json['shop'],
        category: json['category'],
        description: json['description'],
        image: json['image'],
        rating: json['rating'],
        price: json['price'],
        qty: json['qty'],
      );

  // convert FriutModel object to json object
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'category': category,
        'shop': shop,
        'description': description,
        'image': image,
        'rating': rating,
        'price': price,
        'qty': qty,
      };
}
