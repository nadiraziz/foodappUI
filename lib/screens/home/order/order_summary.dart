// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../core/constant.dart';
import '../components/bottom_nav.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({Key? key}) : super(key: key);
  static String id = 'order_page';
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
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
              "Order summery ",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF283547),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF283547),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
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
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF283547)),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 34.0),
                          child: MaterialButton(
                            color: kPrimaryColor,
                            padding: const EdgeInsets.all(8.0),
                            onPressed: () {},
                            child: const Text(
                              'Change',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            // borderSide: BorderSide(
                            //   color: kYellowColor,
                            // ),
                          )),
                    ]),
                  ),
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, right: 200.0),
                child: Text('Select Delivery Method',
                    style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return LimitedBox(
                        child: Card(
                          child: RadioListTile(
                            groupValue: 1,
                            value: 1,
                            onChanged: (value) {
                              // ignore: avoid_print
                              print("CurrentSelected $index");
                              // setState(() {
                              //   isSelected = true;
                              // });
                            },
                            title: const Text('Local Delivery'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: Column(
                  children: const [
                    Card(
                      child: ListTile(
                        title: Text('Delivery charges'),
                        trailing: Text(
                          'FREE',
                          style: TextStyle(color: Colors.green, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Sub Total'),
                        trailing: Text(
                          '₹750',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 43.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        decoration:
                            const BoxDecoration(color: kButtonOrangeTextColor),
                        width: MediaQuery.of(context).size.width - 56,
                        height: 56.0,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 22.0),
                              child: Text('CHECK OUT',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kWhiteColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 190.0),
                              child: Text('₹750',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: kWhiteColor)),
                            ),
                          ],
                        )),
                    MaterialButton(
                      onPressed: () {},
                      height: 56.0,
                      minWidth: 56,
                      elevation: 0.0,
                      color: kButtonOrangeTextColor,
                      child: const Icon(Icons.keyboard_arrow_right),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNav());
  }
}
