import 'package:flutter/material.dart';
import '../core/constant.dart';
import 'components/bottom_nav.dart';
import 'order/my_address.dart';
import 'order/order_summary.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static String id = 'cart_page';
  @override
  // ignore: library_private_types_in_public_api
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        toolbarHeight: 80.0,
        title: const Padding(
          padding: EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(
              child: Text(
            "My Cart",
            style: TextStyle(
                fontSize: 20,
                color: kSecondaryColor,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: kSecondaryColor,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: Container(
        color: kLightTextColor,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: kWhiteColor,
              ),
              child: Card(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: LimitedBox(
                  child: Row(children: [
                    Column(
                      children: const [
                        Text(
                          'Deliver to Farseen Morayur 673642',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Kottakunnan (h) po moayur  6736...',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF283547)),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 34.0),
                        child: MaterialButton(
                          color: kPrimaryColor,
                          padding: const EdgeInsets.all(8.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyAddress()),
                            );
                          },
                          child: const Text(
                            'Change',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          // borderSide: BorderSide(
                          //   color: kPrimaryColor,
                          // ),
                        )),
                  ]),
                ),
              )),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 0.0),
                    title: Card(
                      margin: EdgeInsets.zero,
                      child: LimitedBox(
                        maxHeight: 140,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Image.asset('assets/images/boost.png'),
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
                                  child:
                                      Text('1 kg', textAlign: TextAlign.left),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    children: const [
                                      Text('₹65'),
                                      SizedBox(width: 10.0),
                                      Text('₹75',
                                          style: TextStyle(
                                              color: kMutedTextColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60.0, left: 40.0),
                              child: Row(
                                children: [
                                  ButtonBar(
                                    children: [
                                      MaterialButton(
                                        height: 32.0,
                                        minWidth: 32.0,
                                        color: kPrimaryColor,
                                        textColor: kSecondaryColor,
                                        onPressed: () => {},
                                        splashColor: kSecondaryColor,
                                        child: const Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: kSecondaryColor),
                                        ),
                                      ),
                                      const Text('1',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: kSecondaryColor)),
                                      // ElevatedButton(
                                      //   onPressed: (){},
                                      //   child: Text('+'))
                                      MaterialButton(
                                        height: 32.0,
                                        minWidth: 32.0,
                                        color: kYellowColor,
                                        textColor: kWhiteColor,
                                        onPressed: () => {},
                                        splashColor: kSecondaryColor,
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: kSecondaryColor),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      decoration:
                          const BoxDecoration(color: kButtonOrangeTextColor),
                      width: MediaQuery.of(context).size.width - 125,
                      height: 56.0,
                      child: const Center(
                          child: Text('PLACE ORDER',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kWhiteColor)))),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderSummary()),
                      );
                    },
                    height: 56.0,
                    minWidth: 125,
                    elevation: 0.0,
                    color: kButtonOrangeTextColor,
                    child: const Center(
                        child: Text('₹750',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
