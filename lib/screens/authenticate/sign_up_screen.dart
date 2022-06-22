import 'package:flutter/material.dart';
import 'package:foodapp/screens/core/constant.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id = 'signup_page';
  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/login_wallpapper.png",
                fit: BoxFit.fill, scale: 0.9),
          ),
          Positioned(
            top: 108,
            child: Container(
              width: 345,
              height: 539,
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
                      child: Text('Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 34)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text('Create Your New Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF506481))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                        // onChanged: (val) => {
                        //   setState(() => email = val)
                        // },
                        // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFFBD00))),
                          labelText: 'Name',
                          hintText: "Name",
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
                          obscureText: true,
                          // onChanged: (val) => {
                          //   setState(() => email = val)
                          // },
                          // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: const Icon(Icons.visibility),
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFFFBD00))),
                            labelText: 'Password',
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
                        child: InternationalPhoneNumberInput(
                          keyboardType: TextInputType.number,
                          onInputChanged: (PhoneNumber value) {},
                          inputBorder: const OutlineInputBorder(),
                          inputDecoration: InputDecoration(
                            hintText: "Number",
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
                          selectorConfig: const SelectorConfig(
                            showFlags: true,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.arrow_drop_down),
                        hintText: "Location",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFFBD00))),
                        labelText: 'Location',
                        // filled: true,
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
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, DeliveryAddress.id);
                          },
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
                              'SIGN IN',
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
          Positioned(
            left: 55.0,
            top: 679.0,
            width: 270.0,
            height: 27.54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: MaterialButton(
                    padding: const EdgeInsets.only(left: 0.0),
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    enableFeedback: false,
                    child: const Text('Login here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFFFFBD00))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
