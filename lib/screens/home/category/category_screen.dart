import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../components/app_bar_home.dart';
import '../components/bottom_nav.dart';
import '../components/nav_drawer.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);
  static String id = 'category';

  @override
  // ignore: library_private_types_in_public_api
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: const IconThemeData(color: kSecondaryColor),
        title: homeHead(),
      ),
      drawer: NavDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: categoryData.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionPanelList(
                  animationDuration: const Duration(milliseconds: 750),
                  elevation: 1,
                  children: [
                    ExpansionPanel(
                      body: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      categoryData[index].subCategory,
                                      style: const TextStyle(
                                          color: kSecondaryColor,
                                          fontSize: 15,
                                          letterSpacing: 0.3,
                                          height: 1.3),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            categoryData[index].categoryName,
                            style: const TextStyle(
                                fontSize: 18,
                                color: kSecondaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                        );
                        //
                      },
                      isExpanded: categoryData[index].expanded,
                    )
                  ],
                  expansionCallback: (int item, bool status) {
                    setState(() {
                      categoryData[index].expanded =
                          !categoryData[index].expanded;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

class CategoryClass {
  bool expanded;
  String categoryName;
  String subCategory;

  CategoryClass(
      {required this.categoryName,
      required this.subCategory,
      this.expanded = false});
}

List<CategoryClass> categoryData = <CategoryClass>[
  CategoryClass(categoryName: 'Grocery', subCategory: 'Rice & Gains'),
  CategoryClass(
      categoryName: 'Restaurant & cafe', subCategory: 'dairy products'),
  CategoryClass(categoryName: 'Vegetables', subCategory: 'cooking oils & ghee'),
  CategoryClass(categoryName: 'Fruits', subCategory: 'Rice & Gains'),
  CategoryClass(
      categoryName: 'Fish chicken beef', subCategory: 'cooking oils & ghee'),
  CategoryClass(categoryName: 'Bakery', subCategory: 'dairy products'),
  CategoryClass(
      categoryName: 'Woman & baby items', subCategory: 'cooking oils & ghee'),
  CategoryClass(
      categoryName: 'Clean & house holds', subCategory: 'Rice & Gains'),
  CategoryClass(
      categoryName: 'Electronic & accessories',
      subCategory: 'cooking oils & ghee'),
  CategoryClass(categoryName: 'Stationery', subCategory: 'dairy products'),
];
