import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 45,
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/images/background.jpg'),
                  fit: BoxFit.fill),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  data: 'Athletics Shoes\nCollection',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: AppColor.whiteColor,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.23,
            ),
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: AppColor.greyColor,
              labelColor: AppColor.whiteColor,
              unselectedLabelColor: AppColor.whiteColor,
              unselectedLabelStyle: const TextStyle(
                fontSize: 16.0,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
              labelStyle: const TextStyle(
                fontSize: 16.0,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
              tabs: const [
                Tab(
                  text: 'Men Shoes',
                ),
                Tab(
                  text: 'Women Shoes',
                ),
                Tab(
                  text: 'children Shoes',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.35,
            ),
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  height: double.maxFinite,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                ),
                Container(
                  height: double.maxFinite,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.pink,
                ),
                Container(
                  height: double.maxFinite,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
