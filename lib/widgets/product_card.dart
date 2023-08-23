import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:e_commerce_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String price;
  final String category;
  final String id;
  final String name;
  final String image;
  const ProductCard(
      {super.key,
      required this.price,
      required this.category,
      required this.id,
      required this.name,
      required this.image});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: AppColor.whiteColor,
                spreadRadius: 1.0,
                blurRadius: 0.6,
                offset: Offset(1, 1)),
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.image,
                        ),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
                      onTap: null,
                      child: const Icon(
                        Icons.favorite_border_outlined,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      data: widget.name,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                    AppText(
                      data: widget.category,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: AppColor.greyColor,
                    ),
                  ],
                ),
              ),
              AppText(
                data: widget.price,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ),
      ),
    );
  }
}
