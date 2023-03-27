import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomerAllCategoriesDetailScreenServiceProviderWidget
    extends StatefulWidget {
  final String fullName;
  final String profileImageUrl;
  final String address;
  final int rating;
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.profileImageUrl),
                  radius: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.fullName,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          widget.address,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(children: [
                      // ...List.generate(
                      //   5,
                      //   (index) => Icon(
                      //     index < widget.rating
                      //         ? Icons.star
                      //         : Icons.star_border,
                      //     color: Theme.of(context).accentColor,
                      //   ),
                      // ),
                      ...List.generate(
                        widget.rating.floor(),
                        (index) => Icon(
                          Icons.star,
                          color: Theme.of(context).accentColor,
                          size: 16,
                        ),
                      ),
                      if (widget.rating % 1 != 0)
                        Icon(
                          Icons.star_half,
                          color: Theme.of(context).accentColor,
                          size: 16,
                        ),
                      ...List.generate(
                        5 - widget.rating.ceil(),
                        (index) => Icon(
                          Icons.star_border,
                          color: Theme.of(context).accentColor,
                          size: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.rating.toString(),
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '(',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        widget.totalNumberOfRatings,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        ')',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
