import 'package:get/get.dart';
import 'package:laptop_market/themes.dart';

class Controller extends GetxController {
  final isDarkMode = false.obs;

  void toggleSwitch() {
    isDarkMode.value = isDarkMode.value ? false : true;
    toggleTheme();
  }

  void toggleTheme() {
    if (isDarkMode.value)
      Get.changeTheme(lightTheme);
    else
      Get.changeTheme(darkTheme);
  }
}
