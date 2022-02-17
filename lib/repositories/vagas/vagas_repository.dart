

import '../../models/vagas_model.dart';

abstract class VagasRepository {
  Future<VagasModel> createdVaga(VagasModel vagasModel);
  Future<VagasModel> updateVaga(VagasModel vagasModel);
  Future<List<VagasModel>> findAll();
}