import 'package:flutter/material.dart';

import '../theme/constants.dart';

class DHeader extends StatelessWidget {
  final String header;
  const DHeader({super.key, required this.header});

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
                "Read More",
                style: Constant.seeMoreText,
              ))
        ],
      ),
    );
  }
}
