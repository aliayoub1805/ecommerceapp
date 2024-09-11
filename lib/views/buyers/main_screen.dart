

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'nav_screens/account_screen.dart';
import 'nav_screens/cart_screen.dart';
import 'nav_screens/category_screen.dart';
import 'nav_screens/home_screen.dart';
import 'nav_screens/search_screen.dart';
import 'nav_screens/store_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen()
  ];
  Color _getIconColor(int index) {
    return _pageIndex == index ? Colors.yellow.shade900 : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _pageIndex,
        onTap: (value){
          setState(() {
            _pageIndex=value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home,color: _getIconColor(0),),label: 'Home',),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/explore.svg',
              width: 20,
              color: _getIconColor(1),),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/shop.svg',
              width: 20,
              color: _getIconColor(2),),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/cart.svg',
              width: 20,
              color: _getIconColor(3),),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg',
              width: 20,
              color: _getIconColor(4),
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account.svg',
              width: 20,
              color: _getIconColor(5),
            ),
            label: 'account',
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
