import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:get/get.dart';

class ECommerceController extends GetxController {
  // List of dropdown items
  //final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  // Reactive variable to track the selected index
  RxInt currentIndex = 0.obs;

  // Method to update current index
  void updateIndex(int index) {
    currentIndex.value = index;
  }

  List<Map<String, dynamic>> hoddieData = [
    {
      //1
      "price": 430,
      "name": "4.0+ HOODIE",
      "color": "BLUE",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie1,
      'description':
          'Stay cozy and stylish with the 4.0+ Hoodie. This vibrant blue hoodie combines a classic design with soft, high-quality fabric, offering comfort and warmth. Perfect for everyday wear, its an essential addition to your wardrobe for any season.'
    },
    {
      //2
      "price": 600,
      "name": "4.0+ JACKET",
      "color": "BLACK",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie2,
      'description':
          'Stay stylish and comfortable with the 4.0+ Jacket. This sleek black jacket is perfect for any weather, offering a lightweight yet durable design. Ideal for everyday wear, it features a modern fit with a versatile look, making it a must-have for your wardrobe.'
    },
    {
      //3
      "price": 450,
      "name": "4.0+ TROUSERS",
      "color": "GRAY",
      "direction": "LEFT",
      'img_url': AppConstants.hoodie3,
      'description':
          'Experience comfort and style with the 4.0+ Trousers. These sleek gray trousers offer a perfect blend of a modern fit and versatile design. Made from high-quality fabric, they provide all-day comfort, making them ideal for both casual and formal wear.'
    },
    {
      //4
      "price": 600,
      "name": "4.0+ TECHNICAL",
      "color": "LIGHTBLUE",
      "direction": "RIGHT",
      'img_url': AppConstants.hoodie4,
      'description':
          'The 4.0+ Technical Hoodie in light blue offers a sleek, modern look with advanced fabric technology. Its designed for optimal comfort and performance, making it perfect for workouts or casual outings. Stay warm and move freely with this versatile, stylish hoodie.'
    },
    {
      //5
      "price": 600,
      "name": "4.0+ HOODIE",
      "color": "LIGHTBLUE",
      "direction": "RIGHT",
      'img_url': AppConstants.hoodie4,
    },
    {
      //6
      "price": 430,
      "name": "4.0+ HOODIE",
      "color": "BLUE",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie1,
      'description':
          'Stay cozy and stylish with the 4.0+ Hoodie. This vibrant blue hoodie combines a classic design with soft, high-quality fabric, offering comfort and warmth. Perfect for everyday wear, its an essential addition to your wardrobe for any season.'
    },
    {
      //7
      "price": 600,
      "name": "4.0+ JACKET",
      "color": "BLACK",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie2,
      'description':
          'Stay stylish and comfortable with the 4.0+ Jacket. This sleek black jacket is perfect for any weather, offering a lightweight yet durable design. Ideal for everyday wear, it features a modern fit with a versatile look, making it a must-have for your wardrobe.'
    },
    {
      //8
      "price": 450,
      "name": "4.0+ TROUSERS",
      "color": "GRAY",
      "direction": "LEFT",
      'img_url': AppConstants.hoodie3,
      'description':
          'Experience comfort and style with the 4.0+ Trousers. These sleek gray trousers offer a perfect blend of a modern fit and versatile design. Made from high-quality fabric, they provide all-day comfort, making them ideal for both casual and formal wear.'
    },
  ];

  RxList<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12'
  ].obs;
}
