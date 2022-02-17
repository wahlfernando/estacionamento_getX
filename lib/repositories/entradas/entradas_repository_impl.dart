import 'dart:developer';
import '../../core/rest_client/rest_client.dart';
import '../../models/garagem_model.dart';
import 'entradas_repository.dart';

class GaragemRepositoryImpl implements GaragemRepository {
  final RestClient _restClient;

  GaragemRepositoryImpl({required RestClient restClient})
      : _restClient = restClient;

  @override
  Future<GaragemModel> createdEntrada(GaragemModel garagemModel) async {
    final result = await _restClient.post('/garagem', {
      'placa': garagemModel.placa,
      'horaEntrada': garagemModel.horaEntrada,
      'horaSaida': garagemModel.horaSaida,
      'vaga': garagemModel.vaga
    });

    if (result.hasError) {
      log(
        'Erro ao realizar cadastro ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current
      );
      throw RestClientException('Erro ao realizar cadstro');
    }

    return GaragemModel.fromJson(result.body);


  }

  @override
  Future<List<GaragemModel>> findAll() async {
    final result = await _restClient.get('/garagem');

    if (result.hasError) {
      log(
        'Erro na busca das entradas ${result.statusCode}',
        error: result.statusText,
        stackTrace: StackTrace.current
      );
      throw RestClientException('Erro na busca das entradas');
    }

    return result.body.map<GaragemModel>((g) => GaragemModel.fromJson(g)).toList();
  }
}
