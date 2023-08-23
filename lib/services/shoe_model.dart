class ShoeModel {
  final int id;
  final String name;
  final double price;
  final String image;
  final String description;
  final String title;

  ShoeModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.title,
  });

  factory ShoeModel.fromJson(Map<String, dynamic> json) {
    return ShoeModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as double,
      image: json['image'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
      'description': description,
      'title': title,
    };
  }
}
