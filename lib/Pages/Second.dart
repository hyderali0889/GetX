// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Welcome to Page two $args"),
    );
  }
}
