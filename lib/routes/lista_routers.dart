
import 'package:controle_estacionamento/modules/lista_veiculos/lista_bindings.dart';
import 'package:controle_estacionamento/modules/lista_veiculos/lista_page.dart';
import 'package:get/get.dart';


class ListaVeiculosRoutes {
  ListaVeiculosRoutes._();

  static final routes = <GetPage>[
    GetPage(
      name: '/lista_veiculos',
      binding: ListaVeiculosBindings(),
      page: () => const ListaVeiculosPage(),
    ),
  ];
}