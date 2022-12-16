import 'package:flutter/material.dart';

import '../theme/constants.dart';

class Review extends StatelessWidget {
  final String review;
  final String brand;
  final String rate;
  final String date;
  const Review(
      {super.key,
      required this.review,
      required this.brand,
      required this.rate,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            review,
            style: Constant.detailText,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                brand,
                style: Constant.reviewerText,
              ),
              Text(
                "  •  ",
                style: Constant.reviewerText,
              ),
              Text(
                rate,
                style: Constant.reviewerText,
              ),
              Text(
                "  •  ",
                style: Constant.reviewerText,
              ),
              Text(
                "2017",
                style: Constant.reviewerText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
