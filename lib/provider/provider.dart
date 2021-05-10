import 'package:flutter/cupertino.dart';
import 'package:practice_app/model/newmodel.dart';
import '../model/model.dart';

class ExecutionAreaProvider with ChangeNotifier {
  List<Product> productList = [
    Product(
        'https://pngimg.com/uploads/apple/apple_PNG12405.png',
        'ONEFIELD',
        'Apple Washnington Bangalore',
        '500g pack',
        'Organic,Pesticide Free +2',
        'Rs 300',
        '250'),
    Product(
        'https://pngimg.com/uploads/apple/apple_PNG12405.png',
        'ONEFIELD',
        'Apple Washnington Bangalore',
        '1kg pack',
        'Organic,Pesticide Free +2',
        'Rs 400',
        '350'),
    Product(
        'https://5.imimg.com/data5/CU/YC/MY-1542160/cherry-tomato-red3-500x500.jpg',
        'ONEFIELD',
        'Cherry Tomatoes North Ooty',
        '250g pack',
        'Organic,Pesticide Free +2',
        'Rs200',
        'Rs150'),
    Product(
        'https://5.imimg.com/data5/CU/YC/MY-1542160/cherry-tomato-red3-500x500.jpg',
        'ONEFIELD',
        'Cherry Tomatoes North Ooty',
        '500g pack',
        'Organic,Pesticide Free +2',
        'Rs300',
        'Rs250'),
    Product(
        'https://5.imimg.com/data5/CU/YC/MY-1542160/cherry-tomato-red3-500x500.jpg',
        'ONEFIELD',
        'Cherry Tomatoes North Ooty',
        '1kg pack',
        'Organic,Pesticide Free +2',
        'Rs400',
        'Rs350')
  ];
  get productListView {
    return productList;
  }

  List<NewProduct> newProduct = [
    NewProduct('https://pngimg.com/uploads/apple/apple_PNG12405.png', 'Apple',
        'Rs 100'),
    NewProduct('https://pngimg.com/uploads/apple/apple_PNG12405.png', 'Apple',
        'Rs 50'),
    NewProduct(
        'https://5.imimg.com/data5/CU/YC/MY-1542160/cherry-tomato-red3-500x500.jpg',
        'Cherry Tomato',
        'Rs 100'),
    NewProduct(
        'https://5.imimg.com/data5/CU/YC/MY-1542160/cherry-tomato-red3-500x500.jpg',
        'Cherry',
        'Rs 150')
  ];
  get newProductListView {
    return newProduct;
  }
}
