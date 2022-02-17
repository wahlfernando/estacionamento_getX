import 'dart:developer';
import '../../core/rest_client/rest_client.dart';
import '../../models/vagas_model.dart';
import 'vagas_repository.dart';

class VagasRepositoryImpl implements VagasRepository {
  final RestClient _restClient;

  VagasRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<VagasModel> createdVaga(VagasModel vagasModel) async {
    final result = await _restClient.post('/vagas', {
      'vaga': vagasModel.vaga,
      'ocupado': vagasModel.ocupado
    });

    if (result.hasError) {
      log(
        'Erro ao realizar cadastro ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current
      );
      throw RestClientException('Erro ao realizar cadstro');
    }

    return VagasModel.fromJson(result.body);
  }

  @override
  Future<VagasModel> updateVaga(VagasModel vagasModel) async {
    final result = await _restClient.put('/vagas', {
      'vaga': vagasModel.vaga,
      'ocupado': vagasModel.ocupado
    });

    if (result.hasError) {
      log(
        'Erro ao atualizar cadastro ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current
      );
      throw RestClientException('Erro ao atualizar cadstro');
    }

    return VagasModel.fromJson(result.body);
  }

  @override
  Future<List<VagasModel>> findAll() async {
    final result = await _restClient.get('/vagas');

    if (result.hasError) {
      log(
        'Erro na busca das vagas ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current
      );
      throw RestClientException('Erro na busca das vagas');
    }

    return result.body.map<VagasModel>((v) => VagasModel.fromJson(v)).toList();
  }

  
}
