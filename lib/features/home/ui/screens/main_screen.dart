import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/features/home/ui/screens/card_screen.dart';
import 'package:laza/features/home/ui/screens/home_screen.dart';
import 'package:laza/features/home/ui/screens/order_screen.dart';
import 'package:laza/features/home/ui/screens/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTap = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const WishListScreen(),
    const OrderScreen(),
    const CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentTap],
      bottomNavigationBar: Container(
        color: Colors.white,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
          child: GNav(
            selectedIndex: currentTap,
            onTabChange: (index){
              setState(() {
                currentTap = index;
              });
            },
            gap: 8,
            tabBackgroundColor: MyColor.mainColor,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(12),
            tabs: const[
                GButton(icon: Icons.home_outlined,text: 'home',),
                GButton(icon: Icons.favorite_border,text: 'like',),
                GButton(icon: Icons.shopping_bag_outlined,text: 'order',),
                GButton(icon: Icons.account_balance_wallet_outlined,text: 'wallet',),
            ],
          ),
        ),
      ),
    );
  }
}
