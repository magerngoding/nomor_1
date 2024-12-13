// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavWidget extends StatelessWidget {
  final String title;
  const NavWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(14),
        color: Colors.blue,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
