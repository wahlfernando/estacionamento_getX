import 'package:controle_estacionamento/core/rest_client/rest_client.dart';
import 'package:controle_estacionamento/models/garagem_model.dart';
import 'package:controle_estacionamento/repositories/entradas/entradas_repository_impl.dart';
import 'package:controle_estacionamento/repositories/vagas/vagas_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class ClientSpy extends Mock implements VagasRepository {}

void main() {
  GaragemRepositoryImpl? sut;
  RestClient? restClient;
  GaragemModel? garagemModel;

  setUp(() {
    restClient = RestClient();
    sut = GaragemRepositoryImpl(restClient: restClient!);
  });

  garagemModel = GaragemModel(
      placa: 'ABC1234',
      horaEntrada: '12:00',
      horaSaida: '17:50',
      vaga: '150-A');

  group('createdEntrada', () {
    test('Shoult throw sever error if invalid method provider', () async {
      final future = sut!.createdEntrada(garagemModel!);

      expect(future, throwsA(throwsException));
    });
  });

  
}
