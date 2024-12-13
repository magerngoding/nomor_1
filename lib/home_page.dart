// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fe_web/widgets/nav_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          information(),
          navbar(),
          const SizedBox(
            height: 40.0,
          ),
          content(context),
          const SizedBox(
            height: 30.0,
          ),
          featured_products(),
          const SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }

  Widget featured_products() {
    return Column(
      children: [
        Center(
          child: Text(
            "FEATURED PRODUCTS",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
              ProductWidget(),
            ],
          ),
        )
      ],
    );
  }

  Widget content(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1623022185110-4dac456e329d?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 50),
            child: Text(
              "FIND THE RIGHT CARTDRIDGES FOR YOUR PRINTER",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(
              top: 125,
              left: 40,
              right: 40,
            ),
            height: 200.0,
            width: 730,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 370,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "3-Step Easy Search",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 355,
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      "Search by Serial Number",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              margin: EdgeInsets.only(top: 220),
              child: DropdownButtonFormField(
                value: '1. Printer Brand',
                items: ['1. Printer Brand', 'Asuss', 'Lenovo'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) {},
                borderRadius: BorderRadius.circular(8),
                icon: const Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 170,
              margin: EdgeInsets.only(top: 220, left: 20),
              child: DropdownButtonFormField(
                value: '2. Printer Series',
                items: ['2. Printer Series', 'Asuss', 'Lenovo'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) {},
                borderRadius: BorderRadius.circular(8),
                icon: const Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 170,
              margin: EdgeInsets.only(top: 220, left: 20),
              child: DropdownButtonFormField(
                value: '3. Printer Model',
                items: ['3. Printer Model', 'Asuss', 'Lenovo'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) {},
                borderRadius: BorderRadius.circular(8),
                icon: const Icon(Icons.keyboard_arrow_down),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 130,
                height: 48,
                margin: EdgeInsets.only(top: 220, left: 20),
                color: Colors.orange,
                child: Center(
                  child: Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    "FIND CATEGORIES",
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget navbar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/king.png",
                  width: 100,
                  height: 100,
                ),
                Text(
                  "CARTRIDGE KINGS",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 45,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 24.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Colors.grey,
                        ),
                      ),
                      hintText: 'SEARCH',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.all(10),
                    ),
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 40,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        color: Colors.white,
                      ),
                      "CART (1)",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavWidget(title: 'HOME'),
            NavWidget(title: 'INK CARTRIDGES'),
            NavWidget(title: 'TONNER CARTRIDGES'),
            NavWidget(title: 'CONTACT US'),
            NavWidget(title: 'LOGIN REGISTER'),
          ],
        ),
      ],
    );
  }

  Widget information() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                "Franchise Opportunities",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Text(
                "Help",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Text(
                "Feedback",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "hello@email.com",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Text(
                "0088822 2222 1111",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
