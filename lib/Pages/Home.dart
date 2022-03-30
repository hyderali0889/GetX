import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: const Text("Get SnackBar"),
          onPressed: snackbar,
        ),
        TextButton(
          child: const Text("Go To Page two"),
          onPressed: () {
            Get.toNamed("/second");
          },
        ),
      ],
    );
  }

  void snackbar() {
    // Get.snackbar("Example", "Dont Touch ME",
    //     backgroundColor: Colors.red,
    //     duration: const Duration(seconds: 3),
    //     borderRadius: 14.0,
    //     colorText: Colors.white,
    //     snackPosition: SnackPosition.BOTTOM);

    Get.dialog(AlertDialog(
      title:const Text("Book You"),
      actions: [
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("X"))
      ],
    ));
  }
}
