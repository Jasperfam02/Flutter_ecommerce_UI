import 'package:flutter/material.dart';
import 'package:my_app/components/bottom_nav_bar.dart';
import 'package:my_app/pages/cart_page.dart';
import 'package:my_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(onTabChange: navigateBottomBar),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.menu, color: Colors.white),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              height: 150,
              alignment: Alignment.center,
              child: Image.asset('assets/images/puma.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.grey[800]),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
