import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget? topLeftWidget, topRightWidget, content, extraContent;
  final String title;
  // AppCard constructor
  const AppCard(
      {Key? key,
      required this.title,
      this.content,
      this.topLeftWidget,
      this.topRightWidget,
      this.extraContent})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(
          top: 4.0, bottom: 16.0, left: 8.0, right: 8.0
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 1.0),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}