import 'package:liste/design_course/home_design_course.dart';
import 'package:liste/hotel_booking/hotel_home_screen.dart';
import 'package:liste/inscription.dart';
import 'package:liste/introduction_animation/introduction_animation_screen.dart';
import 'package:flutter/widgets.dart';
class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/introduction_animation/introduction_animation.png',
      navigateScreen:const IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: HotelHomeScreen(),
    ),
  
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: const DesignCourseHomeScreen(),
    ),
    
    HomeList(
      imagePath: 'assets/design_course/inscription.png',
      navigateScreen:const Inscription(title: 'Inscription',),
    ),

  ];
}
