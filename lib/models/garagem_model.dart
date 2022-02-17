
class GaragemModel {
  GaragemModel({
    required this.placa,
    required this.horaEntrada,
    required this.horaSaida,
    required this.vaga,
  });

  String? placa;
  String? horaEntrada;
  String? horaSaida;  
  String? vaga;  
  
  GaragemModel.fromJson(Map<String, dynamic> json){
    placa = json['placa'] ?? json['placa'];
    horaEntrada = json['hora_entrada'] ?? json['hora_entrada'];
    horaSaida = json['hora_saida'] ?? json['hora_saida'];
    vaga = json['vaga'] ?? json['vaga'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['placa'] = placa;
    _data['hora_entrada'] = horaEntrada;
    _data['hora_saida'] = horaSaida;
    _data['vaga'] = vaga;
    return _data;
  }
}