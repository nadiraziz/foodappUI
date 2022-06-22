import 'package:flutter/material.dart';
import '../../core/constant.dart';
import '../components/bottom_nav.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);
  static String id = 'status';
  @override
  // ignore: library_private_types_in_public_api
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: networkError,
      bottomNavigationBar: const BottomNav(),
    );
  }
}

StatusContent success = const StatusContent(
  statusImg: 'assets/images/success.png',
  statusSubtitle: 'Your order as placed successfully . ',
  statusTitle: 'Order placed',
  buttonText: 'CONTINUE SHOPING',
);
StatusContent emptyCart = const StatusContent(
  statusImg: 'assets/images/cart_status.png',
  statusSubtitle: 'explore our products and exciting new offers today! ',
  statusTitle: 'Your cart is empty',
  buttonText: 'Start shoping',
);
StatusContent networkError = const StatusContent(
  statusImg: 'assets/images/network_error.png',
  statusSubtitle: 'connect  to the internet to browse & shop our products',
  statusTitle: 'oops something wrong ',
  buttonText: 'Try again',
);

class StatusContent extends StatelessWidget {
  final String statusTitle;
  final String statusSubtitle;
  final String statusImg;
  final String buttonText;

  const StatusContent(
      {Key? key,
      required this.statusTitle,
      required this.statusSubtitle,
      required this.statusImg,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(statusImg),
          ),
          Text(statusTitle,
              style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              statusSubtitle,
              style: const TextStyle(color: kSecondaryColor, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                // primary: Color(0xFF#FFBD00),
                primary: kYellowColor,
                onPrimary: kYellowColor,
                onSurface: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  buttonText,
                  style: const TextStyle(color: kSecondaryColor, fontSize: 16),
                ),
              )),
        ],
      ),
    );
  }
}
