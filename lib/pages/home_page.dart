import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/components/bottom_nav_bar.dart';
import 'package:sneaker_shop_app/pages/cart_page.dart';
import 'package:sneaker_shop_app/pages/shop_page.dart';

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

  Widget renderListTile(String text, Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          // Add navigation logic here if needed
        },
      ),
    );
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChanged: navigateBottomBar,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 0,
                        color: Colors.grey[900]!), // Đặt border là none
                  ),
                  child: Image.asset(
                    "lib/images/logonike.png",
                    height: 200,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                renderListTile(
                    "HomePage", Icon(Icons.home, color: Colors.white)),
                renderListTile("About", Icon(Icons.info, color: Colors.white)),
              ],
            ),
            renderListTile("Logout", Icon(Icons.logout, color: Colors.white)),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
