import 'package:flutter/material.dart';
import 'package:ybl/theme/constants.dart';

class SavedTab extends StatefulWidget {
  const SavedTab({super.key});

  @override
  State<SavedTab> createState() => _SavedTabState();
}

class _SavedTabState extends State<SavedTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
          child: Text(
        "Saved Tab",
        style: Constant.tabText,
      )),
    );
  }
}
