import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ybl/home.dart';

import '../theme/constants.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  _viewItem() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: bgColor),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 3,
                      width: 30,
                      margin: const EdgeInsets.only(left: 170),
                      decoration: BoxDecoration(
                          color: iconBlack,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    const SizedBox(
                      width: 125,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/arrow-down.svg",
                          height: 24,
                          color: iconBlack,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "YBL",
                    style: Constant.secondBrand,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "First of all, you have to create an \naccount to continue.",
                    style: Constant.introBottomSheet,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 25,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "If you have an account, please",
                    style: Constant.introBottomSheet,
                  ),
                ),
                Container(
                  height: 25,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Sign In.",
                    style: Constant.signInText,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: bgColor),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.transparent),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: Text(
                        "Create An Account",
                        style: Constant.buttonText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: Constant.buttonText,
                      ),
                    ),
                  ),
                )
              ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 328,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset("assets/images/people.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "YBL",
                  style: Constant.firstBrand,
                )),
            const SizedBox(
              height: 5,
            ),
            Container(
                height: 190,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Trough YBL, you are able \nto read books many times.",
                      style: Constant.introText,
                    ),
                    Text(
                      "Right now, you can try for \nfree for 1 month.",
                      style: Constant.introText,
                    ),
                    Text(
                      "If you want to continue, \nyou can subscribe to YBL.",
                      style: Constant.introText,
                    ),
                  ],
                )),
            const SizedBox(
              height: 30,
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
                  onPressed: _viewItem,
                  child: Text(
                    "Get Free Trial",
                    style: Constant.buttonText,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
