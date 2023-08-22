import 'package:e_commerce_app/services/navscreen_provider.dart';
import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:e_commerce_app/widgets/navbar_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NavScreenNotifier>(
      builder: (context, navScreenNotifier, child) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: AppColor.blackColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarButtons(
                onPressed: () {
                  navScreenNotifier.pageIndex = 0;
                },
                icon: navScreenNotifier.pageIndex == 0
                    ? Icons.home
                    : Icons.home_outlined,
              ),
              NavBarButtons(
                onPressed: () {
                  navScreenNotifier.pageIndex = 1;
                },
                icon: navScreenNotifier.pageIndex == 1
                    ? Icons.search
                    : Icons.search_outlined,
              ),
              NavBarButtons(
                onPressed: () {
                  navScreenNotifier.pageIndex = 2;
                },
                icon: navScreenNotifier.pageIndex == 2
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
              NavBarButtons(
                onPressed: () {
                  navScreenNotifier.pageIndex = 3;
                },
                icon: navScreenNotifier.pageIndex == 3
                    ? Icons.shopping_cart
                    : Icons.shopping_cart_outlined,
              ),
              NavBarButtons(
                onPressed: () {
                  navScreenNotifier.pageIndex = 4;
                },
                icon: navScreenNotifier.pageIndex == 4
                    ? Icons.person
                    : Icons.person_outline,
              ),
            ],
          ),
        );
      },
    );
  }
}
