import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:medic/app/modules/home/controllers/home_controller.dart';
import 'package:medic/app/modules/mainpage/controllers/mainpage_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/app/modules/offers/controllers/offers_controller.dart';

class Itembottombar extends StatelessWidget {
  const Itembottombar({
    super.key,
    required this.controller,
    required this.index,
    required this.icon,
    required this.title,
  });

  final MainpageController controller;
  final int index;
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashFactory: InkRipple.splashFactory,
          splashColor: Color(0xff5F48E6).withOpacity(0.3), // สีของ splash
          highlightColor: Colors.transparent, // สีของ highlight
          onTap: () {
            // print(controller.selectedIndex.value);
            // String _beforeTitle = controller.selectedTitle.value;
            controller.selectedIndex.value = index;

            // print('index: $title');
            // int checkIndex = controller.controllerMap.keys
            //     .toList()
            //     .indexOf(_beforeTitle.toLowerCase());

            // if (checkIndex != -1) {
            //   print('checkIndex: $checkIndex');
            //   controller.selectedTitle.value = title.toLowerCase();
            //   print(controller.controllerMap.values
            //       .elementAt(checkIndex)
            //       .toString());
            //   String checkKey = controller.controllerMap.keys.elementAt(
            //       controller.controllerMap.keys.toList().indexOf(_beforeTitle));
            //   print('checkKey: $checkKey');
            //   Get.delete<HomeController>();
            //   Get.put(OffersController());
            // }
          },
          child: Center(
            child: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon.icon,
                    color: controller.selectedIndex.value == index
                        ? Color(0xff5F48E6)
                        : Colors.grey[700],
                  ),
                  Text(
                    title,
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      color: controller.selectedIndex.value == index
                          ? Colors.black
                          : Colors.grey[700],
                      fontWeight: controller.selectedIndex.value == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
