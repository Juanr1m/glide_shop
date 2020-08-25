class Product {
  final String name;
  final String price;
  final String imagePath;
  Product(this.name, this.price, this.imagePath);

  static List<Product> fetchAll() {
    return [
      Product('Glide in Black', '\$29.0', 'assets/images/white.png'),
    ];
  }
}
