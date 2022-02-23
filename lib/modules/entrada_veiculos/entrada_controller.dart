import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:controle_estacionamento/repositories/entradas/entradas_repository.dart';
import '../../models/garagem_model.dart';

class EntradaVeiculosController extends GetxController {
  final formKey = GlobalKey<FormState>();

  MaskTextInputFormatter txtHora =
      MaskTextInputFormatter(mask: '##:##', filter: {'#': RegExp(r'[0-9]')});

  final TextEditingController placaController = TextEditingController();
  final TextEditingController hrEntradaController = TextEditingController();
  final TextEditingController hrSaidaController = TextEditingController();
  final TextEditingController vagaController = TextEditingController();

  final GaragemRepository _garagemRepository;

  EntradaVeiculosController({required GaragemRepository garagemRepository})
      : _garagemRepository = garagemRepository;


  Future<void> inserirVeiculo() async {
    final garagemModel = GaragemModel(
      placa: placaController.text,
      horaEntrada: hrEntradaController.text,
      horaSaida: hrEntradaController.text,
      vaga: vagaController.text,
    );

    var orderPix = await _garagemRepository.createdEntrada(garagemModel);

    update();

    Get.offNamed('/orders/finished', arguments: orderPix);
  }

  

}
