import 'package:flutter/material.dart';

class CustomerHomeScreenTestimonialWidget extends StatefulWidget {
  final String fullName;
  final String profileImageUrl;
final String address;
final String testimonialMessage;

  CustomerHomeScreenTestimonialWidget(this.fullName, this.profileImageUrl,this.address,this.testimonialMessage);

  @override
  State<CustomerHomeScreenTestimonialWidget> createState() =>
      _CustomerHomeScreenTestimonialWidgetState();
}

class _CustomerHomeScreenTestimonialWidgetState
    extends State<CustomerHomeScreenTestimonialWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
