import 'package:flutter/material.dart';
import 'package:my_app/components/cart_item.dart';
import 'package:my_app/models/shoe.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Consumer<Cart>(
          builder: (context, value, child) {
            final cart = value.getUserCart();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔥 Header
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_cart_outlined),
                      const SizedBox(width: 10),
                      const Text(
                        'My Cart',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${cart.length} items',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                const Divider(height: 1),

                // 🧺 Empty state
                if (cart.isEmpty)
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 80,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Your cart is empty',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  // 🧾 Cart list
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final shoe = cart[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          child: CartItem(shoe: shoe),
                        );
                      },
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
