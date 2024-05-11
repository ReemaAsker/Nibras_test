import 'package:get/get.dart';

class DropController extends GetxController {
  var selectedOption = "شركة تضامنية".obs;

  void setSelectedOption(String option) {
    selectedOption.value = option;
  }
}
