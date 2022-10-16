import 'package:get/get.dart';

import '../routes/routes.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();
  var activeMenuItem = overViewPageRoute.obs;
  var hoveringMenuItem = "".obs;
}
