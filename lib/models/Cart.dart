import 'package:flutter/foundation.dart';

import 'Shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Air Zoom Pegasus 38",
      price: "1000000",
      imagepath: "lib/images/shoe01.jpg",
      desc: "Cool Shoe for running enthusiasts",
    ),
    Shoe(
      name: "Adidas UltraBoost 21",
      price: "1200000",
      imagepath: "lib/images/shoe02.jpg",
      desc: "Premium running shoe with Boost technology",
    ),
    Shoe(
      name: "Nike Air Max 270",
      price: "900000",
      imagepath: "lib/images/shoe03.jpg",
      desc: "Stylish lifestyle shoe with Air Max cushioning",
    ),
    Shoe(
      name: "Adidas Stan Smith",
      price: "800000",
      imagepath: "lib/images/shoe04.jpg",
      desc: "Classic tennis shoe loved by all",
    ),
    Shoe(
      name: "Nike React Infinity Run Flyknit",
      price: "1100000",
      imagepath: "lib/images/shoe05.jpg",
      desc: "Comfortable running shoe with React foam",
    ),
    Shoe(
      name: "New Balance Fresh Foam 1080v11",
      price: "950000",
      imagepath: "lib/images/shoe06.jpg",
      desc: "Plush cushioning for long-distance running",
    ),
    Shoe(
      name: "Asics Gel-Nimbus 23",
      price: "1050000",
      imagepath: "lib/images/shoe07.jpg",
      desc: "High-performance shoe with Gel cushioning",
    ),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
