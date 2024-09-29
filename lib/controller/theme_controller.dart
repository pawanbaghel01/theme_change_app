import 'package:get/get.dart';
import 'package:theme_change_app/config/theme.dart';

class ThemeController extends GetxController{
  RxBool isDark =false.obs;
  
  void changeMyTheme(){
    isDark.value = !isDark.value;
    Get.changeTheme(isDark.value == true ? darkTheme : lightTheme);
  }

}