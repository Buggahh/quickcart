import 'package:flutter/material.dart';
import 'package:quickcart/consts/consts.dart';

Widget applogoWidget() {
  return Container(
    margin: const EdgeInsets.only(top: 50),
    child: Column(
      children: [
        Image.asset(
          icAppLogo,
          width: 100,
          height: 100,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}