void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}");
  }
}

void afterPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice =
        originalPrice - (originalPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
  print('Fruit Details After Applying $discountPercentage% Discount:');
}

void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);
  print('\n');
  afterPriceDiscount(fruits, 10);
  displayFruitDetails(fruits);
}
