import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medic/app/widgets/carouselItem.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // GlobalKey containerKey = GlobalKey();

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.circleUser,
                    color: Colors.black,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'MEDICINE',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Badge(
                    backgroundColor: Colors.green[700],
                    child: FaIcon(
                      FontAwesomeIcons.basketShopping,
                      color: Colors.black,
                      size: 30,
                    ),
                    label: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 55,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xffF3F2E9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Search Medicine & Health Products',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  const FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 160,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xffD7D0FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UPLOAD PRESCRIPTION",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Upload your prescription and get your medicines delivered at your doorstep",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "FLAT 20% OFF\nON MEDICINES*",
                        style: GoogleFonts.beVietnamPro(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          // var width = MediaQuery.of(context).size.width;
                          // var height = MediaQuery.of(context).size.height;
                          // Get.snackbar('width , height', '$width , $height',
                          //     snackPosition: SnackPosition.BOTTOM);
                          Get.toNamed('home/upload');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff5F48E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "ORDER NOW",
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 235,
              child: PageView.builder(
                onPageChanged: (index) {
                  controller.currentIndexPage.value = index;
                  print(controller.currentIndexPage.value);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: carouselItem(),
                  );
                },
              ),
            ),
            //dot
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: controller.currentIndexPage.value == index
                          ? Colors.black
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Popular Categories",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "SEE ALL",
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.65,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SizedBox(
                    // margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                            height: 120,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://m.media-amazon.com/images/I/71i1H+j2ITL._AC_SL1500_.jpg',
                                fit: BoxFit.values[1],
                              ),
                            )),
                        const SizedBox(height: 10),
                        Text(
                          "Category Name",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.beVietnamPro(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
