import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';
import './login_screen.dart';


TextEditingController phoneNo = TextEditingController();
TextEditingController name = TextEditingController();

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).splashColor,
            ),
            onPressed: () {},
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to WorkIt!",
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Glad to see you!",
                    style: TextStyle(
                        fontSize: 26,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "We will send you an One Time Password on this mobile number.",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(109, 119, 133, 1)),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(109, 119, 133, 1)),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Contact Number",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "outfit",
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(109, 119, 133, 1)),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: phoneNo,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).accentColor,
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: "outfit",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.left,
                        ),
                      )),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Have an account? '),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed(
                              LoginScreen.routeName);
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Theme.of(context).splashColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ));
  }
}
