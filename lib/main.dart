import 'package:controle_estacionamento/routes/entrada_routers.dart';
import 'package:controle_estacionamento/routes/home_routers.dart';
import 'package:controle_estacionamento/routes/lista_routers.dart';
import 'package:controle_estacionamento/routes/splash_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/bindings/application_bindings.dart';
import 'core/ui/garagem_ui.dart';



Future<void> main() async {
  await GetStorage.init();
  runApp(const GaragemMainApp());
}

class GaragemMainApp extends StatelessWidget {
  const GaragemMainApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garagem',
      initialBinding: ApplicationBinding(),
      theme: GaragemUi.theme,
      getPages: [
        ...SplashRouter.routes,
        ...HomeRoutes.routes,
        ...EntgradaVeiculosRoutes.routes,
        ...ListaVeiculosRoutes.routes,
      ]
    );
  }
}