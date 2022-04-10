import 'package:get/get.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk2.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk3.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk_1.dart';

import '../../splash/splash_screen.dart';


const String splash = "/Splash-Sreen";
const String walk1 = "/Walk-1";
const String walk2 = "/Walk-2";
const String walk3 = "/Walk-3";

List<GetPage> getpages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
    transition: Transition.leftToRight, 
  ),
  GetPage(
    name: walk1,
    page: () => Walk1(),
    transition: Transition.leftToRight, 
  ),
  GetPage(
    name: walk2,
    page: () => Walk2(),
    transition: Transition.leftToRight, 
  ),
  GetPage(
    name: walk3,
    page: () => Walk3(),
    transition: Transition.leftToRight, 
  ),
 
];
