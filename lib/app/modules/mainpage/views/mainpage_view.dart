import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic/app/modules/home/views/home_view.dart';
import 'package:medic/app/modules/offers/views/offers_view.dart';
import 'package:medic/app/modules/profiles/views/profiles_view.dart';
import 'package:medic/app/widgets/Itembottombar.dart';
import '../controllers/mainpage_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainpageView extends GetView<MainpageController> {
  const MainpageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFAF3),
      body: Obx(
        () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            final curve = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            );
            final inAnimation =
                Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                    .animate(curve);
            return SlideTransition(
              position: inAnimation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: IndexedStack(
            key: ValueKey<int>(controller.selectedIndex.value),
            index: controller.selectedIndex.value,
            children: const [
              HomeView(),
              Center(
                child: Text('Order'),
              ),
              Center(
                child: Text('Lab Test'),
              ),
              OffersView(),
              ProfilesView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        color: const Color(0xffFBFAF3),
        height: 50,
        child: Row(
          children: [
            Itembottombar(
              controller: controller,
              index: 0,
              icon: const Icon(Icons.home),
              title: 'HOME',
            ),
            Itembottombar(
              controller: controller,
              index: 1,
              icon: const Icon(Icons.shopping_cart),
              title: 'ORDER',
            ),
            Itembottombar(
              controller: controller,
              index: 2,
              icon: const Icon(Icons.science_outlined),
              title: 'LAB TEST',
            ),
            Itembottombar(
              controller: controller,
              index: 3,
              icon: const Icon(Icons.percent_rounded),
              title: 'OFFERS',
            ),
            Itembottombar(
              controller: controller,
              index: 4,
              icon: const Icon(Icons.person),
              title: 'PROFILE',
            ),
          ],
        ),
      ),
    );
  }
}
