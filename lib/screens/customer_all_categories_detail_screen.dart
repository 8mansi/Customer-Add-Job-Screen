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
      'rating': 5,
      'totalNumberOfRatings': '19'
    },
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Ramesh Naik",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1675767993/kimvaz%40gmail.com.jpg",
      "address": "Panjim",
      'rating': 4,
      'totalNumberOfRatings': '15'
    },
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Cruz Dias",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1676281621/cruzdias%40gmail.com.jpg",
      "address": "Vasco",
      'rating': 3,
      'totalNumberOfRatings': '25'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(backgroundColor: Theme.of(context).primaryColor),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Mason',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 24,
              color: Theme.of(context).primaryColor),
        ),
        SizedBox(height: 20),
        Text(
          'Building strong foundations for a better tomorrow',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                // onTap: () => {
                //   Navigator.pushNamed(
                //     context,
                //     CustomerAllCategoriesScreen.routeName,
                //     arguments: testimonials[index].id,
                //   )
                // },
                child: CustomerAllCategoriesDetailScreenServiceProviderWidget(
                  // _id: testimonials[index]._id,
                  fullName: testimonials[index]['fullName'],
                  profileImageUrl: testimonials[index]['profileImageUrl'],
                  address: testimonials[index]['address'],
                  rating: testimonials[index]['rating'],
                  totalNumberOfRatings: testimonials[index]
                      ['totalNumberOfRatings'],
                ),
              );
            },
            itemCount: testimonials.length,
          ),
        ),
      ]),
    );
  }
}
