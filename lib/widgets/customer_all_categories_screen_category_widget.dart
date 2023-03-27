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
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                Image.network(
                  widget.skillImageUrl,
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.skillName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
              ]),
            ),
          ],
        ));
  }
}
