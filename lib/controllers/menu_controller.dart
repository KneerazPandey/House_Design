import 'package:get/get.dart';

class MenuController extends GetxController {
  final _hoverMenuItem = 'none'.obs;

  get hoverMenuItem {
    return _hoverMenuItem.value;
  }

  void setHoverMenuItem(newHoverMenuItem) {
    _hoverMenuItem.value = newHoverMenuItem;
  }
}
