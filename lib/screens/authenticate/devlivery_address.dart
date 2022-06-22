import 'package:flutter/material.dart';
import 'package:foodapp/screens/core/constant.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({Key? key}) : super(key: key);
  static String id = 'delivery_address_page';
  @override
  // ignore: library_private_types_in_public_api
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/login_wallpapper.png",
              fit: BoxFit.fill,
              scale: 0.9,
            ),
          ),
          // Positioned(
          //     height: 20.0,
          //     width: 33.0,
          //     left: 318.0,
          //     top: 42.0,
          //     child: TextButton(onPressed: (){}, child: Text('Skip', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16)))),
          Positioned(
            top: 108,
            child: Container(
              width: 345,
              height: 540,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x2C273814),
                    offset: Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Text('Delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 34)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Place",
                          border: const OutlineInputBorder(),
                          filled: true,
                          fillColor: const Color.fromRGBO(239, 242, 245, 0.4),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 15),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide:
                                  const BorderSide(color: Color(0xFFE0E5EB))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                        hintText: "Address",
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: const Color.fromRGBO(239, 242, 245, 0.4),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                const BorderSide(color: Color(0xFFE0E5EB))),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Pincode",
                            border: const OutlineInputBorder(),
                            filled: true,
                            fillColor: const Color.fromRGBO(239, 242, 245, 0.4),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 15),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    const BorderSide(color: Color(0xFFE0E5EB))),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                        hintText: "Landmark(optional)",
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: const Color.fromRGBO(239, 242, 245, 0.4),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                const BorderSide(color: Color(0xFFE0E5EB))),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                        hintText: "Alternate Phone Number(optional)",
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: const Color.fromRGBO(239, 242, 245, 0.4),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 15),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide:
                                const BorderSide(color: Color(0xFFE0E5EB))),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // primary: Color(0xFF#FFBD00),
                            primary: kPrimarycolor,
                            onPrimary: kPrimarycolor,
                            onSurface: const Color(0xFFFFD140),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Color(0xFF38465A),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
