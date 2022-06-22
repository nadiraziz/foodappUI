import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../components/address_card.dart';
import '../components/bottom_nav.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);
  static String id = 'my_address';
  @override
  // ignore: library_private_types_in_public_api
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
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
            "My Address",
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
            icon: const Icon(Icons.arrow_back, color: kSecondaryColor),
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
                  color: kLightTextColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MaterialButton(
                    color: kPrimaryColor,
                    padding: const EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        '+ ADD NEW ADDRESS',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: kYellowColor),
                      ),
                    ),
                    // borderSide: const BorderSide(
                    //   color: kPrimaryColor,
                    // ),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, right: 250, bottom: 10.0),
              child: Text(
                '3 saved address',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return addressCard();
              },
              itemCount: 3,
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
