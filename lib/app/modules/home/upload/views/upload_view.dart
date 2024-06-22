import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/upload_controller.dart';

class UploadView extends GetView<UploadController> {
  const UploadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Prescription'.toUpperCase(),
          style: GoogleFonts.beVietnamPro(
            fontSize: 19.5,
            fontWeight: FontWeight.w500,
            color: Color(0xff0D0D0D),
          ),
        ),
        backgroundColor: const Color(0xffFBFAF3),
      ),
      backgroundColor: const Color(0xffFBFAF3),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xffD7D0FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text.rich(
                  TextSpan(
                    text: 'Flat',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0D0D0D),
                    ),
                    children: [
                      TextSpan(
                        text: ' 15% off*',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5F48E6),
                        ),
                      ),
                      TextSpan(
                        text: ' on Medicines Order',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0D0D0D),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 27),
              Text(
                'Have a Prescription?',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 16.26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 27),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0BAB7C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(15),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  'Upload Prescription'.toUpperCase(),
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 16.26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 27),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Image.network(
                    "https://i.imgur.com/Mv7Q6xv.png",
                    width: 50,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      'Your Attached Prescription will be \nsecure and Private.',
                      style: GoogleFonts.lato(
                        fontSize: 11.38,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              Text(
                'Why Upload a Prescription?',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 13.01,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.mobileScreenButton,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "Never Lose the Digital of your Prescription. It will be with you wherever you go.",
                      style: GoogleFonts.lato(
                        fontSize: 11.38,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FaIcon(
                    FontAwesomeIcons.flask,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "Tata labs specialist will help you.",
                      style: TextStyle(
                        fontSize: 11.38,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FaIcon(
                    FontAwesomeIcons.lock,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "Details from your Prescription are not shared with any third Party.",
                      style: TextStyle(
                        fontSize: 11.38,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'What is a Valid Prescription?',
                style: GoogleFonts.beVietnamPro(
                  fontSize: 10.57,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff5F48E6),
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: const Color(0xff5F48E6),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEFECFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.imgur.com/CCGM8Rr.jpeg",
                        width: 140,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Frequent Pains & Aches Slowing you Down?",
                                style: GoogleFonts.beVietnamPro(
                                  fontSize: 9.76,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Find Out the Cause.!",
                                style: GoogleFonts.lato(
                                  fontSize: 9.76,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff0BAB7C),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Frequent Pain Check Profile",
                                style: GoogleFonts.beVietnamPro(
                                  fontSize: 11.38,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 15,
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xff5F48E6),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "5 Test at",
                                      style: GoogleFonts.lato(
                                        fontSize: 10.57,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "\$15",
                                      style: GoogleFonts.lato(
                                        fontSize: 19.52,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Flash Sale".toUpperCase(),
                                          style: GoogleFonts.lato(
                                            fontSize: 15.01,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            // italic
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Text(
                                          "Limited Period Offer",
                                          style: GoogleFonts.lato(
                                            fontSize: 6.51,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "T&C Apply.".toUpperCase(),
                                    style: GoogleFonts.beVietnamPro(
                                      fontSize: 9.76,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Book Now".toUpperCase(),
                                    style: GoogleFonts.beVietnamPro(
                                      fontSize: 9.76,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff0BAB7C),
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2,
                                      decorationColor: const Color(0xff0BAB7C),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0BAB7C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(15),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CONTINUE",
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 16.26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
