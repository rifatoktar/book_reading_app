import 'package:flutter/material.dart';
import 'package:ybl/theme/constants.dart';

class CSubHeader extends StatelessWidget {
  final String header;
  const CSubHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            header,
            style: Constant.secondHeader,
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "See More",
                style: Constant.seeMoreText,
              ))
        ],
      ),
    );
  }
}
