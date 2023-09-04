// grocery_data.dart

class GroceryItem {
  final String name;
  final double price;
  final String imagePath;

  GroceryItem(
      {required this.name, required this.price, required this.imagePath});
}

List<GroceryItem> groceryItems = [
  GroceryItem(
      name: 'Apples', price: 2.99, imagePath: 'assets/images/ImageIcon.png'),
  GroceryItem(
      name: 'Bananas', price: 1.99, imagePath: 'assets/images/ImageIcon.png'),
  GroceryItem(
      name: 'Oranges', price: 3.49, imagePath: 'assets/images/ImageIcon.png'),
];
