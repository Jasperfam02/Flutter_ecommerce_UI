import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: "Puma Enzo2",
      price: "RM500",
      imagePath: 'assets/images/enzo.png',
      description: "Nice Enzo2 Shoe",
    ),
    Shoe(
      name: "Puma Airwist Black",
      price: "RM400",
      imagePath: 'assets/images/pumablack.png',
      description: "Nice Airwist Black Shoe",
    ),
    Shoe(
      name: "Puma Enzo3",
      price: "RM300",
      imagePath: 'assets/images/sneaker.png',
      description: "Nice Enzo3 Shoe",
    ),
  ];

  //list of item
  List<Shoe> userCart = [];

  // get list of item
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
