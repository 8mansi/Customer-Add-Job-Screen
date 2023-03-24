import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomerAllCategoriesDetailScreenServiceProviderWidget
    extends StatefulWidget {
  final String fullName;
  final String profileImageUrl;
  final String address;
  final String rating;
  final String totalNumberOfRatings;

  CustomerAllCategoriesDetailScreenServiceProviderWidget({
    required this.fullName,
    required this.profileImageUrl,
    required this.address,
    required this.rating,
    required this.totalNumberOfRatings,
  });
  @override
  State<CustomerAllCategoriesDetailScreenServiceProviderWidget> createState() =>
      _CustomerAllCategoriesDetailScreenServiceProviderWidgetState();
}

class _CustomerAllCategoriesDetailScreenServiceProviderWidgetState
    extends State<CustomerAllCategoriesDetailScreenServiceProviderWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
