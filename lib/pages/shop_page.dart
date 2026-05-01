import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/components/shoe_tile.dart';
import 'package:my_app/models/shoe.dart';

import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoetoCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully Addded'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search, color: Colors.black),
              ],
            ),
          ),

          //text description
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Below are the hot deal products',
              style: TextStyle(color: Colors.grey[900]),
            ),
          ),

          // //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          //item description
          SizedBox(
            height: 260, // control height
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // 🔥 IMPORTANT
              itemCount: 3,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(shoe: shoe, onTap: () => addShoetoCart(shoe));
              },
            ),
          ),
        ],
      ),
    );
  }
}
