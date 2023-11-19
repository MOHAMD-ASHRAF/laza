import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:laza/core/theming/color/my_color.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
          child: GNav(
            onTabChange: (index){
              print(index);
            },
            gap: 8,
            tabBackgroundColor: MyColor.mainColor,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(12),
            tabs: const [
               GButton(icon: Icons.home,text: 'home',),
               GButton(icon: Icons.favorite,text: 'like',),
               GButton(icon: Icons.search,text: 'search',),
               GButton(icon: Icons.settings,text: 'setting',),
            ],
          ),
        ),
      ),
    );
  }
}
