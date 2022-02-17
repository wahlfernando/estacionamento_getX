import 'package:get/get.dart';

import '../modules/splash/splash_bindings.dart';
import '../modules/splash/splashpage.dart';


class SplashRouter {
  SplashRouter._();

  static final routes = <GetPage>[
    GetPage(
      name: '/',
      binding: SplashBindings(),
      page: () => const Splashpage(),
    )
  ];
}
