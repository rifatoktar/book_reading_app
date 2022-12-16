import 'package:flutter/material.dart';

import '../theme/constants.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
          child: Text(
        "Search Tab",
        style: Constant.tabText,
      )),
    );
  }
}
