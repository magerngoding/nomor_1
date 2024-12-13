// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(14),
      width: 220,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 140,
            color: Colors.grey[400],
            child: Image.asset(
              "assets/images/ink.png",
              fit: BoxFit.cover,
              width: 200.0,
              height: 200.0,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "HP 62 Black Ink Cartdrige",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "(HPC2P04AE)",
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$9.49",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 110,
                height: 30,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    "ADD TO CART",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
