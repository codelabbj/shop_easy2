import 'package:flutter/material.dart';
import '../pages/acceuil/screens/acceuil_mobile_screen.dart';
import '../pages/chat/screens/chat_mobile_screen.dart';
import '../pages/profile/screens/profile_mobile_screen.dart';
import '../pages/search/screens/search_mobile_screen.dart';

class bottomConst {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static List<Map<String, dynamic>> bottomList = [
    {
      'icon': Image.asset(
        "assets/images/home1.png",
        width: 21,
        height: 21,
      ),
      'active_icon': Image.asset("assets/images/home1.png", width: 30, height: 30, color: Color(0xFFFF9B00)),
      "screen": AcceuilMobileScreen(),
      "label": "Home"
    },
    {
      'icon': Image.asset(
        "assets/images/loupe1.png",
        width: 21,
        height: 21,
      ),
      'active_icon': Image.asset("assets/images/loupe1.png", width: 30, height: 30, color: Color(0xFFFF9B00)),
      "screen": SearchMobileScreen(),
      "label": "Searh"
    },
    {
      'icon': Image.asset(
        "assets/images/marketplace1.png",
        width: 28,
        height: 28,
      ),
      'is_center': true, // marque le bouton flottant central
    },
    {
      'icon': Image.asset(
        "assets/images/messenger1.png",
        width: 21,
        height: 21,
      ),
      'active_icon': Image.asset("assets/images/messenger1.png", width: 30, height: 30, color: Color(0xFFFF9B00)),
      "screen": ChatMobileScreen(),
      "label": "Chat"
    },
    {
      'icon': Image.asset(
        "assets/images/user1.png",
        width: 21,
        height: 21,
      ),
      'active_icon': Image.asset("assets/images/user1.png", width: 30, height: 30, color: Color(0xFFFF9B00)),
      "screen": const ProfileMobileScreen(),
      "label": "Profile"
    }
  ];
}
