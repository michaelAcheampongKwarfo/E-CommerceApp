import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/app_text.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(data: 'FavScreen', fontSize: 20),
      ),
    );
  }
}
