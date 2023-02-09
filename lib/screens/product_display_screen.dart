import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/product_display_list_view.dart';
import '../widgets/top_container.dart';

class ProductDisplayScreen extends StatefulWidget {
  const ProductDisplayScreen({super.key});

  @override
  State<ProductDisplayScreen> createState() => _ProductDisplayScreenState();
}

class _ProductDisplayScreenState extends State<ProductDisplayScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedValue = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(
        children: [
          const TopContainer(
            title: 'Produtos',
            searchBarTitle: 'Buscar item',
          ),

          //tab bar e tab views
          TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: kBackgroundColor,
            indicatorSize: TabBarIndicatorSize.label,
            onTap: (value) {
              setState(() {
                selectedValue = value;
              });
              tabController.animateTo(value);
            },
            tabs: [
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: selectedValue == 0
                      ? kBackgroundColor
                      : kGreydColor.withOpacity(.8),
                  boxShadow: selectedValue == 0
                      ? [
                          BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ]
                      : null,
                ),
                child: const Text(
                  'Queridinhos',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: selectedValue == 1
                      ? kBackgroundColor
                      : kGreydColor.withOpacity(.8),
                  boxShadow: selectedValue == 0
                      ? [
                          BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ]
                      : null,
                ),
                child: const Text(
                  'Novidades',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          //tab view
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                ProductDisplayListView(),
                // ProductDisplayListView(),
                // ProductDisplayListView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
