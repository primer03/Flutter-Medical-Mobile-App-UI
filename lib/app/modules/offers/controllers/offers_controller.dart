import 'package:get/get.dart';

class OffersController extends GetxController {
  //TODO: Implement OffersController

  final count = 0.obs;
  final selectedIndex = 0.obs;
  final chipList = ['ALL', 'PAYMENT', 'MEDICINE', 'DIAGNOSTIC'].obs;
  final isScrollingDown = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
