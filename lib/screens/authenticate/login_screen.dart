import 'package:flutter/material.dart';
import 'package:foodapp/screens/authenticate/sign_up_screen.dart';
import 'package:foodapp/screens/core/constant.dart';

import 'new_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = 'login_page';
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/login_wallpapper.png",
              fit: BoxFit.cover,
              scale: 0.7,
            ),
          ),
          Positioned(
            top: 108,
            child: Container(
              width: 345,
              height: 391,
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
                      child: Text('Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 34)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text('Welcome! happy to see you',
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
                          hintText: "Mobile number",
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
                          obscureText: true,
                          // onChanged: (val) => {
                          //   setState(() => email = val)
                          // },
                          // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: const Icon(Icons.visibility),
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
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NewPass.id);
                      },
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      enableFeedback: false,
                      child: const Text('Forgot password?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF979797))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
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
          Positioned(
            height: 27.0,
            width: 251.0,
            left: 73.0,
            top: 553.0,
            child: Row(
              children: [
                const Text('Don\'t have an account?',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w500)), // Text
                Expanded(
                  child: MaterialButton(
                    padding: const EdgeInsets.only(left: 0.0),
                    onPressed: () {
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    enableFeedback: false,
                    child: const Text('Sign Up',
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
