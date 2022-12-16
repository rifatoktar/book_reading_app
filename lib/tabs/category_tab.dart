import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ybl/theme/constants.dart';
import 'package:ybl/widgets/category_widgets/category_books.dart';
import 'package:ybl/widgets/category_widgets/category_subheader.dart';

import '../widgets/category_widgets/category.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "YBL",
          style: Constant.appbarBrand,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/notification.svg",
                color: iconBlack,
                height: 24,
              ))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Category(
                  header: 'Thriller',
                  icon: 'assets/icons/ghost.svg',
                ),
                SizedBox(
                  width: 16,
                ),
                Category(
                  header: 'Geo',
                  icon: 'assets/icons/globe.svg',
                ),
                SizedBox(
                  width: 16,
                ),
                Category(
                  header: 'Romantic',
                  icon: 'assets/icons/heart.svg',
                ),
                SizedBox(
                  width: 16,
                ),
                Category(
                  header: 'Recipe',
                  icon: 'assets/icons/bowl.svg',
                ),
                SizedBox(
                  width: 16,
                ),
                Category(
                  header: 'See More',
                  icon: 'assets/icons/arrow-right.svg',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 235,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/hand.png",
                  height: 140,
                ),
                Text(
                  "You did not read any \nbook. Let’s read a book",
                  style: Constant.homeImage,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor,
                      border: Border.all(
                        color: secondaryColor,
                        width: 2,
                      )),
                  child: SvgPicture.asset(
                    "assets/icons/arrow-down.svg",
                    color: iconBlack,
                    height: 20,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const CSubHeader(header: "Thriller"),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 238,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CBook(
                    imageLink:
                        "https://danbrown.com/wp-content/uploads/2017/06/US_Big.jpg"),
                SizedBox(
                  width: 16,
                ),
                CBook(
                    imageLink:
                        "https://www.scifinow.co.uk/wp-content/uploads/2019/11/image-768x1170.png"),
                SizedBox(
                  width: 16,
                ),
                CBook(
                    imageLink:
                        "https://www.scifinow.co.uk/wp-content/uploads/2019/11/image-768x1170.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ]),
      )),
    );
  }
}
