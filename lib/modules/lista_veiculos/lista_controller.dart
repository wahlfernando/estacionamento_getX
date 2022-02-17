import 'dart:developer';

import 'package:controle_estacionamento/repositories/entradas/entradas_repository.dart';
import 'package:controle_estacionamento/repositories/vagas/vagas_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/mixins/messages_mixin.dart';
import '../../models/garagem_model.dart';
import '../../models/vagas_model.dart';

class ListaVeiculosController extends GetxController {
  final formKey = GlobalKey<FormState>();

  GaragemRepository _garagemRepository;
  VagasRepository _vagasRepository;

  ListaVeiculosController({
    required GaragemRepository garagemRepository,
    required VagasRepository vagasRepository,
  })  : _garagemRepository = garagemRepository,
        _vagasRepository = vagasRepository;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();
  final vagas_disponiveis = <VagasModel>[].obs;
  final veiculos = <GaragemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    try {
      _loading.toggle();
      await listVeiculos();
      _loading.toggle();
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao buscar veiculos', error: e, stackTrace: s);
      _message(MessageModel(
          title: 'Erro',
          message: 'Erro ao buscar veiculos',
          type: MessageTyoe.error));
    }
  }


  Future<void> refreshPage()async {
    try {
      await listVeiculos();
    } catch (e, s) {
      log('Erro ao buscar os veículos', error: e, stackTrace: s);
      _message(MessageModel(
          title: 'Erro',
          message: 'Erro ao buscar os veículos',
          type: MessageTyoe.error));
    }
  }

  Future<void> listVagas() async {
    final vagas = await _vagasRepository.findAll();

    vagas_disponiveis.assignAll(vagas);
  }

  Future<void> listVeiculos() async {
    final veiculo = await _garagemRepository.findAll();

    veiculos.assignAll(veiculo);
  }
}
