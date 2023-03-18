import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: "assets/images/zoom freak.jpg",
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      imagePath: "assets/images/air jordan.jpg",
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      imagePath: "assets/images/kdtrey.jpg",
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      imagePath: "assets/images/kyrie.jpg",
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
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

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
