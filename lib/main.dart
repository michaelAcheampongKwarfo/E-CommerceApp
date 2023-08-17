import 'package:e_commerce_app/presentation/navbar.dart';
import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike E-Commerece',
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.transparentColor,
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      home: const NavBarScreen(),
    );
  }
}
