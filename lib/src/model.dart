import 'package:brasil_api/src/brasil_api_repository.dart';

import 'model_private.dart';

class Cep {
  final String cep;
  final String state;
  final String city;
  final String neighborhood;
  final String street;
  final String service;

  Cep({
    required this.cep,
    required this.state,
    required this.city,
    required this.neighborhood,
    required this.street,
    required this.service,
  });

  factory Cep.fromJson(Map<String, dynamic> json) {
    return Cep(
      cep: json['cep'],
      state: json['state'],
      city: json['city'],
      neighborhood: json['neighborhood'],
      street: json['street'],
      service: json['service'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = cep;
    data['state'] = state;
    data['city'] = city;
    data['neighborhood'] = neighborhood;
    data['street'] = street;
    data['service'] = service;
    return data;
  }

  static Future<Cep> findCep(String cep) async {
    return BrasilApiRepository.getCep(cep);
  }
}

class CepV2 {
  final String cep;
  final String state;
  final String city;
  final String neighborhood;
  final String street;
  final String service;
  final Location location;

  CepV2({
    required this.cep,
    required this.state,
    required this.city,
    required this.neighborhood,
    required this.street,
    required this.service,
    required this.location,
  });

  factory CepV2.fromJson(Map<String, dynamic> json) {
    return CepV2(
      cep: json['cep'],
      state: json['state'],
      city: json['city'],
      neighborhood: json['neighborhood'],
      street: json['street'],
      service: json['service'],
      location: Location.fromJson(json['location']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = cep;
    data['state'] = state;
    data['city'] = city;
    data['neighborhood'] = neighborhood;
    data['street'] = street;
    data['service'] = service;
    data['location'] = location.toJson();
    return data;
  }

  static Future<CepV2> findCepV2(String cep) async {
    return BrasilApiRepository.getCepV2(cep);
  }
}

class Bank {
  final String ispb;
  final String name;
  final int code;
  final String fullName;

  Bank({
    required this.ispb,
    required this.name,
    required this.code,
    required this.fullName,
  });

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      ispb: json['ispb'],
      name: json['name'],
      code: json['code'],
      fullName: json['fullName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ispb'] = ispb;
    data['name'] = name;
    data['code'] = code;
    data['fullName'] = fullName;
    return data;
  }

  static Future<Bank> findAllBank() async {
    return BrasilApiRepository.getAllBank();
  }

  static Future<Bank> findBank(String id) async {
    return BrasilApiRepository.getBank(id);
  }
}

class Ddd {
  final String state;
  final List<String> cities;

  Ddd({required this.state, required this.cities});

  factory Ddd.fromJson(Map<String, dynamic> json) {
    return Ddd(
      state: json['state'],
      cities: json['cities'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['state'] = state;
    data['cities'] = cities;
    return data;
  }

  static Future<Ddd> findDdd(String ddd) async {
    return BrasilApiRepository.getDdd(ddd);
  }
}

class Feriado {
  final String date;
  final String name;
  final String type;

  Feriado({required this.date, required this.name, required this.type});

  factory Feriado.fromJson(Map<String, dynamic> json) {
    return Feriado(
      date: json['date'],
      name: json['name'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['name'] = name;
    data['type'] = type;
    return data;
  }

  static Future<Feriado> findFeriados(String year) async {
    return BrasilApiRepository.getFeriados(year);
  }
}

class Ncm {
  final String codigo;
  final String descricao;
  final String dataInicio;
  final String dataFim;
  final String tipoAto;
  final String numeroAto;
  final String anoAto;

  Ncm({
    required this.codigo,
    required this.descricao,
    required this.dataInicio,
    required this.dataFim,
    required this.tipoAto,
    required this.numeroAto,
    required this.anoAto,
  });

  factory Ncm.fromJson(Map<String, dynamic> json) {
    return Ncm(
      codigo: json['codigo'],
      descricao: json['descricao'],
      dataInicio: json['data_inicio'],
      dataFim: json['data_fim'],
      tipoAto: json['tipo_ato'],
      numeroAto: json['numero_ato'],
      anoAto: json['ano_ato'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['codigo'] = codigo;
    data['descricao'] = descricao;
    data['data_inicio'] = dataInicio;
    data['data_fim'] = dataFim;
    data['tipo_ato'] = tipoAto;
    data['numero_ato'] = numeroAto;
    data['ano_ato'] = anoAto;
    return data;
  }

  static Future<Ncm> findNcm(String ncm) async {
    return BrasilApiRepository.getNcm(ncm);
  }
}
