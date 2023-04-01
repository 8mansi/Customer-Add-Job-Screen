import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/customer_home_screen_category_widget.dart';
import '../widgets/customer_home_screen_testimonials_widget.dart';

class CustomerHomeScreen extends StatefulWidget {
  static const routeName = '/customerHome';

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  List skillsCategories = [
    {
      'skillName': 'Mason',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679595959/l4wsyzkqclxf895chhw2.jpg',
    },
    {
      'skillName': 'Plumber',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596071/tw5cww2vouqs95d80zjd.jpg',
    },
    {
      'skillName': 'Carpenter',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596135/tb9kdbkkeqmqru4ay62f.jpg',
    },
    {
      'skillName': 'Cook',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596205/awj26xj2xs0fegomfvwc.jpg',
    },
    {
      'skillName': 'Electrician',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596259/veh8b29pgszb6xlrm0cw.jpg',
    },
    {
      'skillName': 'Painter',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596309/pameow0wevt9vhuioaqu.jpg',
    },
    {
      'skillName': 'Plumber',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596071/tw5cww2vouqs95d80zjd.jpg',
    },
  ];

  List corausalImages = [
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1592861956120-e524fc739696?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'
    }
  ];

  List testimonials = [
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Ravi Naik",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1675765220/ravinaik%40gmail.com.jpg",
      "address": "Margao",
      'testimonialMessage':
          'There\'s no reason a hula hoop can\'t also be a circus ring.'
    },
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Ramesh Naik",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1675767993/kimvaz%40gmail.com.jpg",
      "address": "Panjim",
      'testimonialMessage':
          'The team members were hard to tell apart since they all wore their hair in a ponytail.'
    },
    {
      "_id": "63e2236d9da7a3bf85595a8a",
      "fullName": "Cruz Dias",
      "profileImageUrl":
          "https://res.cloudinary.com/dyouf5py6/image/upload/v1676281621/cruzdias%40gmail.com.jpg",
      "address": "Vasco",
      'testimonialMessage':
          'Nothing is as cautiously cuddly as a pet porcupine.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CUSTOMER HOME SCREEN"),
      ),
    );
  }
}
