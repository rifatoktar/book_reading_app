import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/constants.dart';

class Category extends StatelessWidget {
  final String icon;
  final String header;
  const Category({super.key, required this.icon, required this.header});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
      ),
      onPressed: () {},
      child: SizedBox(
        height: 70,
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 70,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: homeCategory),
              child: SvgPicture.asset(
                icon,
                height: 24,
                color: iconBlack,
              ),
            ),
            const Spacer(),
            Text(
              header,
              style: Constant.homeCategory,
            )
          ],
        ),
      ),
    );
  }
}
