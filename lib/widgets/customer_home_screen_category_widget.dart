import 'package:flutter/material.dart';

class CustomerHomeScreenCategoryWidget extends StatefulWidget {
  final String skillName;
  final String skillImageUrl;

  CustomerHomeScreenCategoryWidget(this.skillName, this.skillImageUrl);

  @override
  State<CustomerHomeScreenCategoryWidget> createState() =>
      _CustomerHomeScreenCategoryWidgetState();
}

class _CustomerHomeScreenCategoryWidgetState
    extends State<CustomerHomeScreenCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
