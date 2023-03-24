import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerAddJobScreen extends StatefulWidget {
  static const routeName = '/customerAddJobScreen';

  @override
  State<CustomerAddJobScreen> createState() => _CustomerAddJobScreenState();
}

class _CustomerAddJobScreenState extends State<CustomerAddJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CUSTOMER ADD JOB SCREEN"),
      ),
    );
  }
}
