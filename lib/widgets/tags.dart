import 'package:flutter/material.dart';
import 'package:ybl/theme/constants.dart';

class Tag extends StatelessWidget {
  final String tag;
  const Tag({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 10,
        width: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: tagColor),
        child: Center(
          child: Text(
            tag,
            style: Constant.tagText,
          ),
        ),
      ),
    );
  }
}
