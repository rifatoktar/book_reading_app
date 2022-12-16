import 'package:flutter/material.dart';

import '../../pages/book_detail.dart';

class CBook extends StatelessWidget {
  final String imageLink;
  const CBook({super.key, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BookDetail()),
        );
      },
      child: Container(
        height: 238,
        width: 156,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(imageLink))),
      ),
    );
  }
}
