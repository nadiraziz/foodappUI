import 'package:flutter/material.dart';

class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);
  static String id = 'newPass_page';

  @override
  // ignore: library_private_types_in_public_api
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
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
              height: 324,
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
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Text('Create New Password',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24)),
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
                          hintText: "New Password",
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
                            hintText: "Confirm Password",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // primary: Color(0xFF#FFBD00),
                            primary: const Color(0xFFFFBD00),
                            onPrimary: const Color(0xFFFFBD00),
                            onSurface: const Color(0xFFFFD140),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              'NEXT',
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
