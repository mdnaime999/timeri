import 'package:get/get.dart';

import '../views/pages/home_page.dart';
import 'bindings.dart';

class RouteManeger {
  static String home = "/";

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => HomePage(),
      bindings: [MenuBinding()],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
