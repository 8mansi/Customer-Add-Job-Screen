import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/auth.dart';

import './screens/onboarding_screen.dart';
import './screens/login_screen.dart';
import './screens/register_screen.dart';
import './screens/otp_screen.dart';
import './screens/customer_tabs_screen.dart';
import './screens/customer_home_screen.dart';
import './screens/customer_chat_screen.dart';
import './screens/customer_add_job_screen.dart';
import './screens/customer_explore_screen.dart';
import './screens/customer_profile_screen.dart';
import './screens/customer_all_categories_detail_screen.dart';
import './screens/customer_all_categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => Auth(),
          ),
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            title: 'WorkIt',
            theme: ThemeData(
              // primarySwatch: Colors.cyan,

              primaryColor: Color.fromRGBO(10, 25, 49, 1),
              accentColor: Color.fromRGBO(255, 201, 71, 1),
              splashColor: Color.fromRGBO(24, 90, 219, 1),
              backgroundColor: Color.fromRGBO(239, 239, 239, 1),
            ),
            home: auth.isAuth ? CustomerAddJobScreen() : OtpScreen(),
            routes: {
              LoginScreen.routeName: (ctx) => LoginScreen(),
              RegisterScreen.routeName: (ctx) => RegisterScreen(),
              OtpScreen.routeName: (ctx) => OtpScreen(),
              CustomerHomeScreen.routeName: (ctx) => CustomerHomeScreen(),
              CustomerChatScreen.routeName: (ctx) => CustomerChatScreen(),
              CustomerAddJobScreen.routeName: (ctx) => CustomerAddJobScreen(),
              CustomerExploreScreen.routeName: (ctx) => CustomerExploreScreen(),
              CustomerProfileScreen.routeName: (ctx) => CustomerProfileScreen(),
              CustomerAllCategoriesScreen.routeName: (ctx) =>
                  CustomerAllCategoriesScreen(),
              CustomerAllCategoriesDetailScreen.routeName: (ctx) =>
                  CustomerAllCategoriesDetailScreen()
            },
          ),
        ));
  }
}
