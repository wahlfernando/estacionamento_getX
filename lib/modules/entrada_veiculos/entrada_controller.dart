import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:controle_estacionamento/repositories/entradas/entradas_repository.dart';
import '../../models/garagem_model.dart';

class EntradaVeiculosController extends GetxController {
  final formKey = GlobalKey<FormState>();

  MaskTextInputFormatter txtHora =
      MaskTextInputFormatter(mask: '##:##', filter: {'#': RegExp(r'[0-9]')});

  final TextEditingController placa_controller = TextEditingController();
  final TextEditingController hr_entrada_controller = TextEditingController();
  final TextEditingController hr_saida_controller = TextEditingController();
  final TextEditingController vaga_controller = TextEditingController();

  final GaragemRepository _garagemRepository;

  EntradaVeiculosController({required GaragemRepository garagemRepository})
      : _garagemRepository = garagemRepository;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> inserirVeiculo() async {
    final garagemModel = GaragemModel(
      placa: placa_controller.text,
      horaEntrada: hr_entrada_controller.text,
      horaSaida: hr_saida_controller.text,
      vaga: vaga_controller.text,
    );

    var orderPix = await _garagemRepository.createdEntrada(garagemModel);

    update();

    Get.offNamed('/orders/finished', arguments: orderPix);
  }

  

}
