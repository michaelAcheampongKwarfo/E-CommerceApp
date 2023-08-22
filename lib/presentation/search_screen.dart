import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/app_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(data: 'SearchScreen', fontSize: 20),
      ),
    );
  }
}
