import 'package:get/get.dart';

import '../utils/FetchApi.dart';

class HomeController extends GetxController {
  var number = 1.obs;

  void inc() {
    number.value++;
    
  }

  getData(){
   return Fetch().fetchData();
  }
}
