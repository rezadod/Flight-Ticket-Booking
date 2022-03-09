import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel({
    this.city = '',
    required this.id,
    this.imageUrl = '',
    this.name = '',
    this.price = 0,
    this.rating = 0.0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
          id: id,
          name: json['name'].toString(),
          city: json['city'].toString(),
          imageUrl: json['imgUrl'].toString(),
          rating: json['rating'].toDouble(),
          price: json['price']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'imgUrl': imageUrl,
        'rating': rating,
        'price': price
      };
  @override
  // TODO: implement props
  List<Object?> get props => [id, name, city, price, rating, imageUrl];
}
