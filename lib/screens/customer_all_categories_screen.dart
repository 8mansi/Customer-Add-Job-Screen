import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/customer_all_categories_screen_category_widget.dart';

class CustomerAllCategoriesScreen extends StatefulWidget {
  static const routeName = '/customerAllCategoriesScreen';

  @override
  State<CustomerAllCategoriesScreen> createState() =>
      _CustomerAllCategoriesScreenState();
}

class _CustomerAllCategoriesScreenState
    extends State<CustomerAllCategoriesScreen> {
  List skillsCategories = [
    {
      'skillName': 'Mason',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679664243/hayl1vfic8coubucjyei.jpg',
    },
    {
      'skillName': 'Plumber',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596071/tw5cww2vouqs95d80zjd.jpg',
    },
    {
      'skillName': 'Carpenter',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679663809/fjrjyf7tgqj5sxwqxkoi.jpg',
    },
    {
      'skillName': 'Cook',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679596205/awj26xj2xs0fegomfvwc.jpg',
    },
    {
      'skillName': 'Electrician',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679663981/e7quds1eg5nx3yxv59i0.jpg',
    },
    {
      'skillName': 'Painter',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679664125/zlgf1xzofvcyrsutsldq.jpg',
    },
    {
      'skillName': 'Plumber',
      'skillImageUrl':
          'https://res.cloudinary.com/dyouf5py6/image/upload/v1679664056/l5fegn1q5scadmtlx8rt.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CUSTOMER ALL CATEGORIES SCREEN"),
      ),
    );
  }
}
