import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerExploreScreen extends StatefulWidget {
  static const routeName = '/customerExplore';

  @override
  State<CustomerExploreScreen> createState() => _CustomerExploreScreenState();
}

class _CustomerExploreScreenState extends State<CustomerExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CUSTOMER EXPLORE SCREEN"),
      ),
    );
  }
}
