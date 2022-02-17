import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {

 
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void entradaVeiculo(){
    Get.toNamed('/entrada_veiculos');
  }
  
  void listaVeiculos(){
    Get.toNamed('/lista_veiculos');
  }

}
