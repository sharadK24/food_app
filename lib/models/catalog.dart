class Item {
  final String id; // Changed from int to String to match "Sharad25"
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

final List<Item> product = [
  Item(
    id: "Sharad25",
    name: "iPhone 12 Pro",
    description: "Apple iPhone 12th generation",
    price: 999,
    color: "#33505a",
    image: "https://example.com/iphone12pro.png",
  ),
];
