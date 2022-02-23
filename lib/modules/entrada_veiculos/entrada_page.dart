import 'package:controle_estacionamento/core/ui/widgets/garagem_button.dart';
import 'package:controle_estacionamento/core/ui/widgets/garagem_textformfield.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../core/ui/widgets/garagem_appbar.dart';
import 'entrada_controller.dart';

class EntradaVeiculosPage extends GetView<EntradaVeiculosController> {
  const EntradaVeiculosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GaragemAppbar(),
      body: LayoutBuilder(builder: (_, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      GaragemTextFormField(
                        label: 'Placa',
                        controller: controller.placaController,
                        uppercase: true,
                      ),
                      const SizedBox(height: 8),
                      GaragemTextFormField(
                        label: 'Hora Entrada',
                        controller: controller.hrEntradaController,
                      ),
                      const SizedBox(height: 8),
                      GaragemTextFormField(
                        label: 'Hora Saída',
                        controller: controller.hrSaidaController,
                      ),
                      const SizedBox(height: 8),
                      GaragemTextFormField(
                        label: 'Vaga',
                        controller: controller.vagaController,
                      ),
                      const Spacer(),
                      GaragemButton(
                        label: 'Salvar',
                        onPressed: () {
                          controller.inserirVeiculo();
                        },
                        width: 350,
                      ),
                      const SizedBox(height: 8),
                      GaragemButton(
                        label: 'Cancelar',
                        onPressed: () {
                          Get.back();
                        },
                        width: 350,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
