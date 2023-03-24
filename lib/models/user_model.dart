import 'package:flutter/widgets.dart';

class User with ChangeNotifier {
  String id;
  String token;
  String first_name;
  String last_name;
  String email;
  String mobile;
  String profile_pic;
  String shortBio;
  String longBio;
  String gender;
  String city;
  String state;
  String dob;
  // final DateTime createdTime;

  User(
      {required this.id,
      required this.token,
      required this.first_name,
      required this.last_name,
      required this.email,
      required this.mobile,
      required this.profile_pic,
      required this.shortBio,
      required this.longBio,
      required this.gender,
      required this.city,
      required this.state,
      required this.dob}
      // this.createdTime,
      );
}
// 'id': 'd',
//     'first_name': '',
//     'last_name': '',
//     'email': '',
//     'mobile': '',
//     'profile_pic': '',
//     'shortBio': '',
//     'longBio': '',
//     'gender': '',
//     'city': '',
//     'state': '',
//     'dob': '',