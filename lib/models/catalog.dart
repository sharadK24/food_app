class CatalogModel {
  static List<Item> items = [];

  static List<Item> fromJson(List<dynamic> jsonList) {
    return jsonList.map((json) => Item.fromMap(json)).toList();
  }
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "price": price,
    "color": color,
    "image": image,
  };
}
