import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/app/widgets/itemOffer.dart';

import '../controllers/offers_controller.dart';

class OffersView extends GetView<OffersController> {
  const OffersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();

    // _scrollController.addListener(() {
    _scrollController.addListener(() {
      // เมื่อมีการเลื่อน scroll ลง ให้ทำการ print ค่าของ _scrollController.position.pixels

      if (kDebugMode) {
        print(_scrollController.position.pixels);
      }
      if (_scrollController.position.pixels > 0) {
        controller.isScrollingDown.value = true;
      } else {
        controller.isScrollingDown.value = false;
      }
    });

    return Scaffold(
        backgroundColor: const Color(0xffFBFAF3),
        appBar: AppBar(
          title: Text(
            'OFFERS',
            style: GoogleFonts.beVietnamPro(
              fontSize: 14.64,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Color(0xff1D212D),
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.basketShopping,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              // height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xff1D212D),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                      controller.chipList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          child: Obx(
                            () => AnimatedContainer(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                bottom: 5,
                                top: 5,
                              ),
                              duration: const Duration(
                                  milliseconds:
                                      200), // Reduced duration for smoother transition
                              curve: Curves.easeInOut, // Smooth animation curve
                              decoration: BoxDecoration(
                                color: controller.selectedIndex.value == index
                                    ? const Color(0xff0BAB7C)
                                    : const Color(0xff1D212D),
                                border: Border.all(
                                  color: controller.selectedIndex.value == index
                                      ? const Color(0xff0BAB7C)
                                      : Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                controller.chipList[index],
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            if (kDebugMode) {
                              print(index);
                            }
                            controller.selectedIndex.value = index;
                          },
                        ),
                      ),
                    )),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: 50,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    itemOffer(
                      color: Color(0xFFBFB5FF),
                      title: "FLAT 50% off* upto \$50 Surprice Cashback",
                      subtitle:
                          "Only on Healthcare Products on Orders above \$100",
                      code: "BCH12",
                      discount: "50",
                    ),
                    itemOffer(
                      color: Color(0xFFFFBBD7),
                      title: "FLAT 30% off* upto \$450 Cashback",
                      subtitle: "Big Bachat only on Tuesdays",
                      code: "BCH12",
                      discount: "30",
                    ),
                    itemOffer(
                      color: Color(0xFFFDDD8D),
                      title: "Mega Sale Flat 60% Off*",
                      subtitle:
                          "FLAT 5% OFF* on Purchase of Diabetic Cardic Products",
                      code: "BCH12",
                      discount: "60",
                    ),
                    itemOffer(
                      color: Color.fromARGB(255, 181, 255, 185),
                      title: "FLAT 50% off* upto \$50 Surprice Cashback",
                      subtitle:
                          "Only on Healthcare Products on Orders above \$100",
                      code: "BCH12",
                      discount: "50",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Obx(
          () => AnimatedOpacity(
            opacity: controller.isScrollingDown.value ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: FloatingActionButton(
              onPressed: () {
                _scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
              child: const Icon(Icons.arrow_upward),
            ),
          ),
        ));
  }
}
