
import 'package:get/get.dart';

import '../modules/entrada_veiculos/entrada_bindings.dart';
import '../modules/entrada_veiculos/entrada_page.dart';



class EntgradaVeiculosRoutes {
  EntgradaVeiculosRoutes._();

  static final routes = <GetPage>[
    GetPage(
      name: '/entrada_veiculos',
      binding: EntradaVeiculosBindings(),
      page: () => const EntradaVeiculosPage(),
    ),
  ];
}