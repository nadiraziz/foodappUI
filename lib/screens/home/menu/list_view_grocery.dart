import 'package:flutter/material.dart';
import '../../core/constant.dart';
import '../components/app_bar_home.dart';
import '../components/bottom_nav.dart';
import '../components/category_button.dart';
import '../components/nav_drawer.dart';

class ListGroceryMenu extends StatefulWidget {
  const ListGroceryMenu({Key? key}) : super(key: key);
  static String id = 'list_grocery_menu_page';

  @override
  // ignore: library_private_types_in_public_api
  _ListGroceryMenuState createState() => _ListGroceryMenuState();
}

class _ListGroceryMenuState extends State<ListGroceryMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeHead(),
      drawer: NavDrawer(),
      body: Column(
        children: [
          SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              color: kLightTextColor,
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                child: Row(
                  children: const <Widget>[
                    CategoryButton(
                        data: 'Rice & Grain', color: kSecondaryColor),
                    CategoryButton(
                        data: 'cooking oils & ghee', color: kMutedTextColor),
                    CategoryButton(
                        data: 'Spices & powders', color: kMutedTextColor),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 3,
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              children: [
                foodCard(),
                foodCard(),
                foodCard(),
                foodCard(),
                foodCard(),
                foodCard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

Widget productTile() {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0.0),
    title: Card(
      margin: EdgeInsets.zero,
      child: LimitedBox(
        maxHeight: 140,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset('assets/images/grocery_Sale.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text('Aashivaad atta',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0XFF38465A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text('Wheat Powder',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0XFF38465A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text('1 kg', textAlign: TextAlign.left),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: const [
                      Text('₹65'),
                      SizedBox(width: 10.0),
                      Text('₹75',
                          style: TextStyle(
                              color: kMutedTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 50.0),
              child: MaterialButton(
                color: kYellowColor,
                textColor: kWhiteColor,
                onPressed: () => {},
                splashColor: kSecondaryColor,
                child: const Text(
                  "ADD",
                  style: TextStyle(fontSize: 14, color: kSecondaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget foodCard() {
  return Card(
    child: Container(
      decoration: const BoxDecoration(color: kWhiteColor),
      child: Column(
        children: [
          Image.asset('assets/images/products/napkin.png'),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: const [
                      Text('₹65'),
                      SizedBox(width: 10.0),
                      Text('₹75',
                          style: TextStyle(
                              color: kMutedTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                ),
                const Text('STAYFREE COTTONY SOFT COVER RAGULAR ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kSecondaryColor)),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 5.0),
                //   child: Text(foodData[index].ingredients, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey)),
                // )
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Stack(
                    children: [
                      MaterialButton(
                        minWidth: 120,
                        color: kPrimaryColor,
                        textColor: kWhiteColor,
                        onPressed: () => {},
                        splashColor: kSecondaryColor,
                        child: const Text(
                          "ADD",
                          style:
                              TextStyle(fontSize: 12, color: kSecondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 115),
                        child: MaterialButton(
                          minWidth: 35,
                          color: kYellowColor,
                          textColor: kWhiteColor,
                          onPressed: () => {},
                          splashColor: kSecondaryColor,
                          child: const Text(
                            "+",
                            style:
                                TextStyle(fontSize: 12, color: kSecondaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
