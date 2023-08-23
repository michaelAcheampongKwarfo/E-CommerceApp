import 'package:e_commerce_app/widgets/app_colors.dart';
import 'package:e_commerce_app/widgets/product_card.dart';
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
        body: SingleChildScrollView(
      child: SizedBox(
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
                padding: EdgeInsets.zero,
                isScrollable: true,
                indicatorColor: AppColor.greyColor,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: AppColor.whiteColor,
                unselectedLabelColor: AppColor.whiteColor,
                unselectedLabelStyle: const TextStyle(
                  fontSize: 18.0,
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                ),
                labelStyle: const TextStyle(
                  fontSize: 18.0,
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Times New Roman',
                ),
                tabs: const [
                  Tab(text: 'Men Shoes'),
                  Tab(text: 'Women Shoes'),
                  Tab(text: 'Children Shoes'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.35,
                left: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.height * 0.01,
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return const ProductCard(
                              price: '20.00',
                              category: '\$ Male Shoe',
                              id: '0001',
                              name: 'Nike Shoe',
                              image: 'lib/images/nikeMale.jpg',
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const AppText(
                              data: 'Latest Shoes',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Row(
                                children: [
                                  AppText(
                                    data: 'View All',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: AppColor.greyColor,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width * 0.3,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(16.0),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: AppColor.blackColor,
                                        blurRadius: 2.0,
                                        spreadRadius: 0.8,
                                        offset: Offset(0, 1))
                                  ]),
                              child: Image.asset(
                                'lib/images/nikeFemale.webp',
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
