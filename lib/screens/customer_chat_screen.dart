import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomerChatScreen extends StatefulWidget {
  static const routeName = '/customerChat';

  @override
  State<CustomerChatScreen> createState() => _CustomerChatScreenState();
}

class _CustomerChatScreenState extends State<CustomerChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CUSTOMER CHAT SCREEN"),
      ),
    );
  }
}
