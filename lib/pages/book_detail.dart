import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ybl/theme/constants.dart';
import 'package:ybl/widgets/detail_review.dart';
import 'package:ybl/widgets/tags.dart';

import '../widgets/detail_header.dart';

class BookDetail extends StatefulWidget {
  const BookDetail({super.key});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow-left.svg",
            height: 30,
            color: iconBlack,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/bookmark.svg",
              height: 24,
              color: iconBlack,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 236,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 236,
                    width: 156,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://danbrown.com/wp-content/uploads/2017/06/US_Big.jpg"))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Origin",
                          style: Constant.novelHeader,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Dan Brown",
                          style: Constant.authorName,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Novel",
                              style: Constant.novelAndDate,
                            ),
                            Text(
                              "  •  ",
                              style: Constant.novelAndDate,
                            ),
                            Text(
                              "2017",
                              style: Constant.novelAndDate,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Tag(
                              tag: 'Novel',
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Tag(tag: "Thriller"),
                            SizedBox(
                              width: 5,
                            ),
                            Tag(tag: "Mystery"),
                            SizedBox(
                              width: 5,
                            ),
                            Tag(tag: "Suspense"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const DHeader(
              header: 'Abstract',
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 144,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Robert Langdon, Harvard professor of symbology and religious iconology, arrives at the ultramodern Guggenheim Museum Bilbao to attend a major announcement—the unveiling of a discovery that...",
                style: Constant.detailText,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const DHeader(
              header: 'Reviews',
            ),
            const SizedBox(
              height: 16,
            ),
            const Review(
              review:
                  'Fans of The Da Vinci Code rejoice! Professor Robert Langdon is again solving the mysteries of the universe.',
              brand: '– People Magazine',
              rate: '4.9',
              date: '2017',
            ),
            Center(
              child: Container(
                height: 50,
                width: 400,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: iconBlack,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: Colors.transparent),
                  onPressed: () {},
                  child: Text(
                    "Read Now",
                    style: Constant.buttonText,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
