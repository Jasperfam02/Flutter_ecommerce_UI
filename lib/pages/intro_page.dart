import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Image.asset('assets/images/puma.png', height: 240),
            ),

            const SizedBox(height: 40),

            //title
            const Text(
              "FOREVER FASTER",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            //subtitle
            const Text(
              'Brand New Quality Shoe',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            //start now button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(25),
                width: 300,
                child: const Center(
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
