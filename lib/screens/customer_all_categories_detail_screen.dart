import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/customer_all_categories_detail_screen_service_provider_widget.dart';

class CustomerAllCategoriesDetailScreen extends StatefulWidget {
  static const routeName = '/customerAllCategoriesDetailScreen';

  @override
  State<CustomerAllCategoriesDetailScreen> createState() =>
      _CustomerAllCategoriesDetailScreenState();
}

class _CustomerAllCategoriesDetailScreenState
    extends State<CustomerAllCategoriesDetailScreen> {
  List testimonials = [
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Ravi Naik",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1675765220/ravinaik%40gmail.com.jpg",
      "address": "Margao",
      'rating': '5',
      'totalNumberOfRatings': '19'
    },
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Ramesh Naik",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1675767993/kimvaz%40gmail.com.jpg",
      "address": "Panjim",
      'rating': '4',
      'totalNumberOfRatings': '15'
    },
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Cruz Dias",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1676281621/cruzdias%40gmail.com.jpg",
      "address": "Vasco",
      'rating': '3',
      'totalNumberOfRatings': '25'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CUSTOMER ALL CATEGORIES DETAIL SCREEN"),
      ),
    );
  }
}
