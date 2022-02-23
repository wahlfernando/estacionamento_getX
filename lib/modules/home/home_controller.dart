import 'package:get/get.dart';


class HomeController extends GetxController {


  void entradaVeiculo(){
    Get.toNamed('/entrada_veiculos');
  }
  
  void listaVeiculos(){
    Get.toNamed('/lista_veiculos');
  }

}
