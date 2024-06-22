import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medic/app/modules/home/controllers/home_controller.dart';
import 'package:medic/app/modules/offers/controllers/offers_controller.dart';
import 'package:medic/app/modules/profiles/controllers/profiles_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.blue,
          secondary: Colors.blue[400],
          onPrimary: Colors.white,
        ),
        useMaterial3: true,
      ),
    ),
  );
  Get.put(HomeController());
  Get.put(OffersController());
  Get.put(ProfilesController());
}
