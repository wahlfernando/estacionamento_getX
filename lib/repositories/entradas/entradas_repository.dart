
import 'package:controle_estacionamento/models/garagem_model.dart';

abstract class GaragemRepository {
  Future<GaragemModel> createdEntrada(GaragemModel garagemModel);
  Future<List<GaragemModel>> findAll();
}