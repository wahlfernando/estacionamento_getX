
class VagasModel {
  VagasModel({
    required this.vaga,
    required this.ocupado,
  });
  

  String? vaga;
  bool? ocupado;
  
  VagasModel.fromJson(Map<String, dynamic> json){
    vaga = json['vaga'];
    ocupado = json['ocupado'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['vaga'] = vaga;
    _data['ocupado'] = ocupado;
    return _data;
  }
}