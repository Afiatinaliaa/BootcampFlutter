import 'package:finalprojectflutter/pages/ChatPage.dart';
import 'package:finalprojectflutter/pages/LandingPage.dart';
import 'package:finalprojectflutter/pages/LoginPage.dart';
import 'package:finalprojectflutter/pages/ProfilePage.dart';
import 'package:finalprojectflutter/pages/Settings/SettingPage.dart';
import 'package:finalprojectflutter/routes/route_name.dart';
import 'package:get/get.dart';

import '../pages/Recipe/RecipePage.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.loginPage,
      page: () => Loginpage()
    ),
    GetPage(
      name: RouteName.landingPage,
      page: () => LandingPage()
    ),
    GetPage(
      name: RouteName.recipePage,
      page: () => RecipePage()
    ),
    GetPage(
      name: RouteName.chatPage,
      page: () => ChatPage()
    ),
    GetPage(
      name: RouteName.settingPage,
      page: () => SettingPage()
    ),
    GetPage(
      name: RouteName.profilePage,
      page: () => Profilepage()
    ),
  ];
}