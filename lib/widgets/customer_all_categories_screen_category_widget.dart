import 'package:flutter/material.dart';

class CustomerAllDetailScreenCategoryWidget extends StatefulWidget {
  final String skillName;
  final String skillImageUrl;

  CustomerAllDetailScreenCategoryWidget(this.skillName, this.skillImageUrl);
  @override
  State<CustomerAllDetailScreenCategoryWidget> createState() =>
      _CustomerAllDetailScreenCategoryWidgetState();
}

class _CustomerAllDetailScreenCategoryWidgetState
    extends State<CustomerAllDetailScreenCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
