import 'package:e_commerce_app/presentation/cart_screen.dart';
import 'package:e_commerce_app/presentation/fav_screen.dart';
import 'package:e_commerce_app/presentation/home_screen.dart';
import 'package:e_commerce_app/presentation/profile_screen.dart';
import 'package:e_commerce_app/presentation/search_screen.dart';
import 'package:e_commerce_app/services/navscreen_provider.dart';
import 'package:e_commerce_app/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

List pageList = [
  const HomeScreen(),
  const SearchScreen(),
  const FavScreen(),
  const CartScreen(),
  const ProfileScreen(),
];

class _NavBarScreenState extends State<NavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavScreenNotifier>(
      builder: (context, navScreenNotifier, child) {
        return Scaffold(
          body: pageList[navScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNav(),
        );
      },
    );
  }
}
