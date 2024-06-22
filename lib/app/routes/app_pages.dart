import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/upload/bindings/upload_binding.dart';
import '../modules/home/upload/views/upload_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mainpage/bindings/mainpage_binding.dart';
import '../modules/mainpage/views/mainpage_view.dart';
import '../modules/offers/bindings/offers_binding.dart';
import '../modules/offers/views/offers_view.dart';
import '../modules/profiles/bindings/profiles_binding.dart';
import '../modules/profiles/views/profiles_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.UPLOAD,
          page: () => const UploadView(),
          binding: UploadBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.MAINPAGE,
      page: () => const MainpageView(),
      binding: MainpageBinding(),
    ),
    GetPage(
      name: _Paths.OFFERS,
      page: () => const OffersView(),
      binding: OffersBinding(),
    ),
    GetPage(
      name: _Paths.PROFILES,
      page: () => const ProfilesView(),
      binding: ProfilesBinding(),
    ),
  ];
}
