import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../core/ui/widgets/garagem_appbar.dart';
import '../../core/ui/widgets/garagem_button_home.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GaragemAppbar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(child: Image.asset('assets/images/logo2.png')),
                const Spacer(),
                GaragemButtonHome(
                    label: 'Entrada de Veículo',
                    width: Get.size.width /2,
                    onPressed: () => controller.entradaVeiculo()),
                const SizedBox(
                  height: 20,
                ),
                GaragemButtonHome(
                  label: 'Lista de Veículos / Vaga',
                  width: Get.size.width /2,
                  onPressed: () => controller.listaVeiculos(),
                  color: Colors.indigo,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
