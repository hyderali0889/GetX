// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/HomeController.dart';
import '../utils/FetchApi.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var controo = Get.put(HomeController());

	@override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  var args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    var data = controo.getData();

    return Column(children: [
      Flexible(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            if (data != null) {
              data.then( (e) => print(e.data["id"]) );
              return const Text("hello");
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
      // Text("${controo.number}")),
      // TextButton(
      //     onPressed: () {
      //       controo.inc();
      //     },
      //     child: const Text("Increases")
    ]);
  }
}
