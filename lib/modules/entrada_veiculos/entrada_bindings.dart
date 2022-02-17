import 'package:get/get.dart';
import 'entrada_controller.dart';

class EntradaVeiculosBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(EntradaVeiculosController(garagemRepository: Get.find())); 
    }
}