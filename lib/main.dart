import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/authenticate/devlivery_address.dart';
import 'screens/authenticate/forgot_password.dart';
import 'screens/authenticate/login_screen.dart';
import 'screens/authenticate/new_password.dart';
import 'screens/authenticate/sign_up_screen.dart';
import 'screens/home/cart_screen.dart';
import 'screens/home/category/category_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/menu/grocery_menu.dart';
import 'screens/home/menu/list_view_grocery.dart';
import 'screens/home/menu/menu_screen.dart';
import 'screens/home/order/my_address.dart';
import 'screens/home/order/my_order.dart';
import 'screens/home/order/order_history.dart';
import 'screens/home/order/order_status.dart';
import 'screens/home/order/order_summary.dart';
import 'screens/home/resturant_food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryTextTheme: GoogleFonts.robotoTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: ForgotPass.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        ForgotPass.id: (context) => const ForgotPass(),
        NewPass.id: (context) => const NewPass(),
        SignUp.id: (context) => const SignUp(),
        DeliveryAddress.id: (context) => const DeliveryAddress(),
        CartPage.id: (context) => const CartPage(),
        OrderSummary.id: (context) => const OrderSummary(),
        MyAddress.id: (context) => const MyAddress(),
        OrderHistory.id: (context) => const OrderHistory(),
        MyOrders.id: (context) => const MyOrders(),
        Status.id: (context) => const Status(),
        Category.id: (context) => const Category(),
        Menu.id: (context) => const Menu(),
        GroceryMenu.id: (context) => const GroceryMenu(),
        ListGroceryMenu.id: (context) => const ListGroceryMenu(),
        FoodMenu.id: (context) => const FoodMenu(
              resturant: 'Mexican fried chicken',
            ),
      },
    );
  }
}
