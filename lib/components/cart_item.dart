import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;

  const CartItem({super.key, required this.shoe});

  void removeItemFromCart(BuildContext context) {
    Provider.of<Cart>(context, listen: false).removeItemToCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(shoe.imagePath),
      title: Text(shoe.name),
      subtitle: Text(shoe.price),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => removeItemFromCart(context),
      ),
    );
  }
}
