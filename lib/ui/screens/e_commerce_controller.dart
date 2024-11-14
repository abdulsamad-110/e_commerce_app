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
      'img_url': AppConstants.hoodie1
    },
    {
      //2
      "price": 600,
      "name": "4.0+ JACKET",
      "color": "BLACK",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie2
    },
    {
      //3
      "price": 450,
      "name": "4.0+ TROUSERS",
      "color": "GRAY",
      "direction": "LEFT",
      'img_url': AppConstants.hoodie3
    },
    {
      //4
      "price": 600,
      "name": "4.0+ TECHNICAL",
      "color": "LIGHTBLUE",
      "direction": "RIGHT",
      'img_url': AppConstants.hoodie4
    },
    {
      //5
      "price": 600,
      "name": "4.0+ HOODIE",
      "color": "LIGHTBLUE",
      "direction": "RIGHT",
      'img_url': AppConstants.hoodie4
    },
    {
      //6
      "price": 430,
      "name": "4.0+ HOODIE",
      "color": "BLUE",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie1
    },
    {
      //7
      "price": 600,
      "name": "4.0+ JACKET",
      "color": "BLACK",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie2
    },
    {
      //8
      "price": 450,
      "name": "4.0+ TROUSERS",
      "color": "GRAY",
      "direction": "LEFT",
      'img_url': AppConstants.hoodie3
    },
    {
      //9
      "price": 430,
      "name": "4.0+ HOODIE",
      "color": "BLUE",
      "direction": "CENTER",
      'img_url': AppConstants.hoodie1
    },
    {
      //10
      "price": 600,
      "name": "4.0+ HOODIE",
      "color": "LIGHTBLUE",
      "direction": "RIGHT",
      'img_url': AppConstants.hoodie4
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
