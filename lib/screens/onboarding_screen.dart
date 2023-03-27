import 'package:flutter/material.dart';

import './login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
          ),
          Text(
            'WORK IT',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
          Text(
            'Blue Collar Hub',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 200,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () => {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.routeName,
                    arguments: 'serviceProvider',
                  )
                },
                child: Stack(
                  children: [
                    Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 135,
                          width: 161,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        )),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child:
                            Image.asset('assets/images/beServiceProvider.png')),
                    Positioned(
                      bottom: 0,
                      child: Stack(children: [
                        Container(
                          height: 28,
                          width: 161,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 8, 0, 0),
                          child: Text(
                            'Be a service provider',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w800),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () => {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.routeName,
                    arguments: 'customer',
                  )
                },
                child: Stack(
                  children: [
                    Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 135,
                          width: 161,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        )),
                    Positioned(
                        top: 3,
                        left: 20,
                        child: Image.asset('assets/images/beCustomer.png')),
                    Positioned(
                      bottom: 0,
                      child: Stack(children: [
                        Container(
                          height: 28,
                          width: 161,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                          child: Text(
                            'Find a service provider',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w800),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
