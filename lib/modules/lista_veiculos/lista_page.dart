import 'package:controle_estacionamento/modules/lista_veiculos/widget/veiculo_title.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../core/ui/widgets/garagem_appbar.dart';
import 'lista_controller.dart';

class ListaVeiculosPage extends GetView<ListaVeiculosController> {
  const ListaVeiculosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GaragemAppbar(),
      body: SingleChildScrollView(
          child: Obx(() {
            return ListView.builder(
                itemCount: controller.veiculos.length,
                itemBuilder: (context, index) {
                  final veiculo = controller.veiculos[index];
                  return VeiculoTitle(veiculo: veiculo);
                },
              );
          }),
        )
    );
  }
}
