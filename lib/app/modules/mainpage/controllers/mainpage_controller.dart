import 'package:get/get.dart';
import 'package:medic/app/modules/home/controllers/home_controller.dart';
import 'package:medic/app/modules/offers/controllers/offers_controller.dart';

class MainpageController extends GetxController {
  //TODO: Implement MainpageController

  final count = 0.obs;
  final selectedIndex = 0.obs;
  final selectedTitle = 'home'.obs;
  final controllerMap = {
    'home': HomeController(),
    'offers': OffersController(),
  };
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
