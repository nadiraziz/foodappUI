// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../core/constant.dart';
import '../components/bottom_nav.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);
  static String id = 'my_orders';

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        backgroundColor: kPrimaryColor,
        toolbarHeight: 80.0,
        title: const Padding(
          padding: EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(
              child: Text(
            "Order History ",
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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width,

                // height: 194.0,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x2C273814),
                      blurRadius: 1.0,
                      spreadRadius: 2.0,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                    ),
                  ],
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Order ID# : 987654',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text('Delivery method : Local',
                                  style: TextStyle(
                                      fontSize: 16, color: kMutedTextColor)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: const [
                                  Text('Estimated time 1 hour',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.green)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 10.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('Cancel',
                              style: TextStyle(color: kSecondaryColor)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        color: kMutedTextColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionPanelList(
                        animationDuration: const Duration(milliseconds: 1000),
                        elevation: 1,
                        children: [
                          ExpansionPanel(
                            body: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Divider(
                                      color: kMutedTextColor,
                                    ),
                                    ListTile(
                                      leading: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('Items1'),
                                          ),
                                          Text('Delivery Charge')
                                        ],
                                      ),
                                      trailing: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('₹750'),
                                          ),
                                          Text('FREE'),
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: kMutedTextColor,
                                    ),
                                    const SizedBox(height: 20),
                                    ListTile(
                                      leading: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('TOTAL'),
                                          )
                                        ],
                                      ),
                                      trailing: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('₹750'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return const ListTile(
                                title: Text('Details'),
                              );
                              //
                            },
                            isExpanded: itemData[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData[index].expanded =
                                !itemData[index].expanded;
                          });
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}

List<ItemModel> itemData = <ItemModel>[
  ItemModel(
      headerItem: 'Details',
      colorsItem: kSecondaryColor,
      img: 'assets/images/ashirvaad.png'),
];

class ItemModel {
  bool expanded;
  String headerItem;
  Color colorsItem;
  String img;

  ItemModel(
      {this.expanded = false,
      required this.headerItem,
      required this.colorsItem,
      required this.img});
}
