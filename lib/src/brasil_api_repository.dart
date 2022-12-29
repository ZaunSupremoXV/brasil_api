import 'package:dio/dio.dart';

import 'model.dart';

class BrasilApiRepository {
  static Future<Cep> getCep(String cep) async {
    var response = await Dio().get("https://brasilapi.com.br/api/cep/v1/$cep");
    return Cep.fromJson(response.data);
  }

  static Future<CepV2> getCepV2(String cep) async {
    var response = await Dio().get("https://brasilapi.com.br/api/cep/v2/$cep");
    return CepV2.fromJson(response.data);
  }

  static Future<Bank> getBank(String id) async {
    var response = await Dio().get("https://brasilapi.com.br/api/banks/v1/$id");
    return Bank.fromJson(response.data);
  }

  static Future<Bank> getAllBank() async {
    dynamic response = await Dio().get("https://brasilapi.com.br/api/banks/v1");
    // return Bank.fromJson(response.data).toList();
    return response.map((e) => Bank.fromJson(e)).toList();
  }

  static Future<Ddd> getDdd(String ddd) async {
    var response = await Dio().get("https://brasilapi.com.br/api/ddd/v1/$ddd");
    return Ddd.fromJson(response.data);
  }

  static Future<Feriado> getFeriados(String year) async {
    dynamic response = await Dio().get("https://brasilapi.com.br/api/feriados/v1");
    // return Bank.fromJson(response.data).toList();
    return response.map((e) => Feriado.fromJson(e)).toList();
  }

  static Future<Ncm> getNcm(String ncm) async {
    var response = await Dio().get("https://brasilapi.com.br/api/ncm/v1/$ncm");
    return Ncm.fromJson(response.data);
  }
}
