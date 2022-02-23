import 'package:controle_estacionamento/repositories/entradas/entradas_repository_impl.dart';
import 'package:get/get.dart';

class ListaVeiculosBindings implements Bindings {
    @override
    void dependencies() {
        Get.lazyPut(() => GaragemRepositoryImpl(restClient: Get.find()));
    }
}