import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../core/constant.dart';
import 'components/bottom_nav.dart';
import 'components/loacation_bar.dart';
import 'components/search_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = 'home_page';

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();
  nested() {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                // expandedHeight: 100.0,
                floating: true,
                pinned: false,
                toolbarHeight: 130,
                iconTheme: const IconThemeData(color: kSecondaryColor),
                backgroundColor: kPrimaryColor,
                title: const LocationBar(),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(1.0),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0, left: 16.0, right: 16.0),
                      child: searchNav(),
                    )))
          ];
        },
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlide(buttonCarouselController: buttonCarouselController),
              const CategoryGrid()
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

class CarouselSlide extends StatelessWidget {
  const CarouselSlide({
    Key? key,
    required this.buttonCarouselController,
  }) : super(key: key);

  final CarouselController buttonCarouselController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset('assets/images/slides/slides1.png'),
        Image.asset('assets/images/slides/slides2.png'),
        Image.asset('assets/images/slides/slides3.png')
      ],
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        autoPlay: true,
        // enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 3,
      ),
    );
  }
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text('Category',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: kSecondaryColor)),
              ),
              Text('Browse products by categories',
                  style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      color: kSecondaryColor)),
            ],
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1,
            children: [
              for (var category in categoryData)
                Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: kLightTextColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(category.categoryImg),
                        ),
                        Text(category.categoryName,
                            style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: kSecondaryColor)),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryList {
  String categoryName;
  String categoryImg;

  CategoryList({required this.categoryName, required this.categoryImg});
}

List<CategoryList> categoryData = <CategoryList>[
  CategoryList(
      categoryName: 'Grocery',
      categoryImg: 'assets/images/products/ashirvaad.png'),
  CategoryList(
      categoryName: 'Restaurant & cafe',
      categoryImg: 'assets/images/products/resturant.png'),
  CategoryList(
      categoryName: 'Vegetables',
      categoryImg: 'assets/images/products/veg.png'),
  CategoryList(
      categoryName: 'Fruits', categoryImg: 'assets/images/products/fruits.png'),
  CategoryList(
      categoryName: 'bakery', categoryImg: 'assets/images/products/bake.png'),
  CategoryList(
      categoryName: 'woman & baby',
      categoryImg: 'assets/images/products/napkin.png'),
  CategoryList(
      categoryName: 'Beauty & hygiene',
      categoryImg: 'assets/images/products/beauty.png'),
  CategoryList(
      categoryName: 'clean & house holds',
      categoryImg: 'assets/images/products/cleaning.png'),
  CategoryList(
      categoryName: 'Electronic & accessories',
      categoryImg: 'assets/images/products/led.png'),
  CategoryList(
      categoryName: 'Stationary',
      categoryImg: 'assets/images/products/stationery.png'),
  CategoryList(
      categoryName: 'Covid essentials',
      categoryImg: 'assets/images/products/hygiene.png'),
];
