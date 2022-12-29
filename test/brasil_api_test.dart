import 'package:flutter_test/flutter_test.dart';
import 'package:brasil_api/brasil_api.dart';

void main() {
  test('search cep', () async{
    final resultCep = await Cep.findCep('68902080');
    expect(resultCep, isA<Cep>());
  });
  test('search cep version 2', () async{
    final resultCepV2 = await CepV2.findCepV2('68902080');
    expect(resultCepV2, isA<CepV2>());
  });
  test('search ddd', () async{
    final resultDdd = await Ddd.findDdd('96');
    expect(resultDdd, isA<Ddd>());
  });
  test('search ncm', () async{
    final resultNcm = await Ncm.findNcm('85041000');
    expect(resultNcm, isA<Ncm>());
  });
}
