# brasil_pai
[![Pub](https://img.shields.io/pub/v/dio.svg?style=flat-square)](https://pub.dartlang.org/packages/brasil_api)
[![support](https://img.shields.io/badge/platform-flutter%7Cflutter%20web%7Cdart%20vm-ff69b4.svg?style=flat-square)](https://github.com/ZaunSupremoXV/brasil_api)

Package that consumes data from the Brasil API.

## Get started

### Add dependency

```yaml
dependencies:
  brasil_api: ^1.0.0
```

### Super simple to use

```dart
import 'package:brasil_api/brasil_api.dart';
void getCep() async {
  try {
    var data = await Cep.findCep('68904020');
    print(response);
  } catch (e) {
    print(e);
  }
}
```

## Examples

Performing a `findCep` request:

```dart
Cep cep;
cep = await Cep.findCep('68904020');
print(cep);
```

Performing a `findCepV2` request:

```dart
CepV2 cep;
cep = await CepV2.findCepV2('68902080');
print(cep);
```

Performing a `findCepV2` request:

```dart
CepV2 cep;
cep = await CepV2.findCepV2('68902080');
print(cep);
```

Performing a `findBank` request:

```dart
Bank bank;
bank = await Bank.findBank('1');
print(bank);
```

Performing a `findAllBank` request:

```dart
List<Bank> banks;
banks = await Bank.findAllBank();
print(banks);
```

Performing a `findDdd` request:

```dart
Ddd ddd;
ddd = await Ddd.findDdd('1');
print(ddd);
```

Performing a `findFeriados` request:

```dart
List<Feriado> feriados;
feriados = await Feriado.findFeriados('2022');
print(feriados);
```

Performing a `findNcm` request:

```dart
Ncm ncm;
ncm = await Ncm.findNcm('85041000');
print(ncm);
```

## Copyright & License

This open source project authorized by https://github.com/ZaunSupremoXV/dio/brasil_api/LICENSE , and the license is MIT.

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/ZaunSupremoXV/dio/brasil_api

## 🤝 Colaborador

Thanks to the following people who contributed to this project:

<table>
  <tr>
    <td align="center">
      <a href="https://www.linkedin.com/in/erick-vasconcelos-50baa8150/" target="_blank">
        <img src="https://avatars.githubusercontent.com/u/67069017?v=4" width="100px;" alt="Foto do Erick no GitHub"/><br>
        <sub>
          <b>Erick Vasconcelos</b>
        </sub><br>
        <a href="https://www.buymeacoffee.com/erickzaunlab" target="_blank"><img src="https://raw.githubusercontent.com/appcraftstudio/buymeacoffee/master/Images/snapshot-bmc-button.png" width="100px;"></a>
      </a>
    </td>
  </tr>
</table>