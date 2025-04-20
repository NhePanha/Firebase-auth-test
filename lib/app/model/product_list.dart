class ProductList {
  int id;
  String name;
  String description;
  String image;
  double price;
  int quantity;
  String category;
  String brand;
  String color;
  String size;
  String rating;

  ProductList({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.quantity,
    required this.category,
    required this.brand,
    required this.color,
    required this.size,
    required this.rating,
  });
}

List ProductListData = [
  ProductList(
    id: 1,
    name: 'Product 1',
    description: 'Description of Product 1',
    image: 'assets/images/product1.jpg',
    price: 29.99,
    quantity: 10,
    category: 'Electronics',
    brand: 'Brand A',
    color: 'Red',
    size: 'M',
    rating: '4.5',
  ),
  ProductList(
    id: 2,
    name: 'Product 2',
    description: 'Description of Product 2',
    image: 'assets/images/product2.jpg',
    price: 49.99,
    quantity: 5,
    category: 'Clothing',
    brand: 'Brand B',
    color: 'Blue',
    size: 'L',
    rating: '4.0',
  ),
  ProductList(
    id: 1,
    name: 'Product 1',
    description: 'Description of Product 1',
    image: 'assets/images/product1.jpg',
    price: 29.99,
    quantity: 10,
    category: 'Electronics',
    brand: 'Brand A',
    color: 'Red',
    size: 'M',
    rating: '4.5',
  ),
  ProductList(
    id: 2,
    name: 'Product 2',
    description: 'Description of Product 2',
    image: 'assets/images/pizza.png',
    price: 49.99,
    quantity: 5,
    category: 'Clothing',
    brand: 'Brand B',
    color: 'Blue',
    size: 'L',
    rating: '4.0',
  ),
  ProductList(
    id: 1,
    name: 'Product 1',
    description: 'Description of Product 1',
    image: 'assets/images/bu.png',
    price: 29.99,
    quantity: 10,
    category: 'Electronics',
    brand: 'Brand A',
    color: 'Red',
    size: 'M',
    rating: '4.5',
  ),
  ProductList(
    id: 2,
    name: 'Product 2',
    description: 'Description of Product 2',
    image: 'assets/images/bugur.png',
    price: 49.99,
    quantity: 5,
    category: 'Clothing',
    brand: 'Brand B',
    color: 'Blue',
    size: 'L',
    rating: '4.0',
  ),
];
