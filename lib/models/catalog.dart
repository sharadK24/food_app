class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 14 Pro",
      description: "Apple iPhone 14 Pro with A16 Bionic chip",
      price: 1299,
      color: "#1D1D1F",
      image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-1inch-deeppurple?wid=940&hei=1112&fmt=png-alpha&.v=1663703840378",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String image;
  final String color;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });
}
