import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/app_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(data: 'CartScreen', fontSize: 20),
      ),
    );
  }
}
