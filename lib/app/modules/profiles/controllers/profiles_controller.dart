import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfilesController extends GetxController {
  //TODO: Implement ProfilesController

  final count = 0.obs;
  final menuList = [
    {
      'title': 'My Orders',
      'icon': FontAwesomeIcons.shoppingBag,
      'route': '/orders',
    },
    {
      'title': 'My Wishlist',
      'icon': FontAwesomeIcons.heart,
      'route': '/wishlist',
    },
    {
      'title': 'My Prescription',
      'icon': FontAwesomeIcons.prescriptionBottleAlt,
      'route': '/prescription',
    },
    {
      'title': 'Your Lab Test',
      'icon': FontAwesomeIcons.flask,
      'route': '/labtest',
    },
    {
      'title': 'Doctor Consultation',
      'icon': FontAwesomeIcons.userMd,
      'route': '/doctor',
    },
    {
      'title': 'Payment Methods',
      'icon': FontAwesomeIcons.creditCard,
      'route': '/payment',
    },
    {
      'title': 'Your Addresses',
      'icon': FontAwesomeIcons.mapMarkerAlt,
      'route': '/address',
    },
    {
      'title': 'Pill Reminder',
      'icon': FontAwesomeIcons.capsules,
      'route': '/pillreminder',
    },
    {
      'title': 'Invites Friends',
      'icon': FontAwesomeIcons.userFriends,
      'route': '/InviteFriends',
    },
  ].obs;
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
