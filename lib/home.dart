import 'package:fashion_app/post.dart';
import 'package:fashion_app/recent.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/trending.dart';
import 'Role.dart';
import 'bestseller.dart';
import 'categories.dart';
import 'collection.dart';
import 'fashion.dart';
import 'gem.dart';
import 'offer.dart';
import 'navigation.dart';
import 'cart.dart';
import 'search.dart';
import 'review.dart';
import 'package:fashion_app/navigation_drawer.dart' as custom_drawer;

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Column(
      children: [

        Container(
          padding: const EdgeInsets.only(
            top: 2,
            left: 10,
            right: 10,
            bottom: 2,
          ), // Added padding
          height: 60, // Increased height
          color: Colors.white, // Background color (optional)
          child: Builder(
            builder: (context) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer(); // ✅ Using Builder ensures valid context
                  },
                  child: Image.asset(
                    'assets/icons/img.png',
                    height: 20, // Increased size
                    width: 25,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      'assets/images/img_1.png',
                      height: 40, // Increased size
                      width: 60,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search, size: 30), // Increased icon size
                    SizedBox(width: 15),
                    Icon(Icons.shopping_cart_outlined, size: 30), // Increased icon size
                  ],
                ),
              ],
            ),
          ),
        ),




        Container(
          width: double.infinity,
          height: 1.5,
          color: Colors.grey,
        ),


        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Categories(),
                Offer(),
                Role(),
                Collection(),
                Bestseller(),
                Trending(),
                Fashion(),
                Recent(),
                Gem(),
                Post(),
                Review(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ],
    ),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: custom_drawer.NavigationDrawer(onItemTapped: _onItemTapped),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
