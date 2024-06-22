import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profiles_controller.dart';

class ProfilesView extends GetView<ProfilesController> {
  const ProfilesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final boxWidth = MediaQuery.of(context).size.width;
    const dashWidth = 10.0;
    final dashHeight = 1.0;
    final dashCount = (boxWidth / (2 * dashWidth)).floor();
    return Scaffold(
      backgroundColor: const Color(0xffFBFAF3),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false, // ปิดการลอย
            pinned: true, // ปักหัวข้อ
            elevation: 0, // ปิดเงา
            backgroundColor: Color(0xff1D212D),
            foregroundColor: Colors.white,
            title: const Text('Profile'),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 20, bottom: 20),
              background: Container(
                // color: Colors.blue,
                margin: const EdgeInsets.only(top: 60),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFBFB5FF),
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://xsgames.co/randomusers/avatar.php?g=female',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Anni',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'anni@gmail.com',
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF828488),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Registered Since Dec 202X',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF0BAB7C),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.penToSquare,
                        color: Color(0xFF83848B),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFFEFEDE9),
                          width: 1,
                        ),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        controller.menuList[index]['title'].toString(),
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF151921),
                        ),
                      ),
                      leading: FaIcon(
                        controller.menuList[index]['icon'] as IconData,
                        color: const Color(0xFF151921),
                      ),
                    ),
                  ),
                );
              },
              childCount: controller.menuList.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xffD7D0FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Need Help?',
                    style: GoogleFonts.beVietnamPro(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF151921),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: List.generate(dashCount, (index) {
                      return SizedBox(
                        width: dashWidth,
                        height: dashHeight,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(color: Color(0xFF83848B)),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque sem vitae libero eleifend, non tincidunt orci finibus.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF151921),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Contact Us',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF151921),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.email, color: Color(0xFF151921)),
                      SizedBox(width: 10),
                      Text(
                        'support@example.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF151921),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(Icons.phone, color: Color(0xFF151921)),
                      SizedBox(width: 10),
                      Text(
                        '+1 234 567 890',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF151921),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
