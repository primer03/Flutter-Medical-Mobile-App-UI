import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class itemOffer extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String code;
  final String discount;
  const itemOffer({
    Key? key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.code,
    required this.discount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
        left: 20,
        right: 20,
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFBFAF3),
        border: Border.all(color: const Color(0xFFEFEDE9)),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 0),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "F L A T",
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        height: 0,
                      ),
                      strutStyle: const StrutStyle(
                        height: 0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          discount,
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            height: 0,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: " %\n",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                              fontSize: 13.01,
                              height: 0,
                            ),
                            children: [
                              TextSpan(
                                text: "OFF",
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 6.51,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitle,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_circle_right_outlined,
                size: 35,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Code: $code".toUpperCase(),
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: code));
                  Get.snackbar(
                    "Code Copied",
                    "Coupon code copied to clipboard",
                    snackPosition: SnackPosition.BOTTOM,
                    margin: EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                  );
                },
                child: Text(
                  "Copy Code".toUpperCase(),
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: const Color(0xff0BAB7C),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
