import 'package:mobx/mobx.dart';
import 'package:mobx_1/models/client.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null &&
        validateEmail() == null &&
        validateCpf() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.name.length < 3) {
      return "Seu nome precisa ter mais de três taracteres";
    }

    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.email.length < 3) {
      return "Seu email precisa ter mais de três taracteres";
    } else if (!client.email.contains('@') || !client.email.contains('.com')) {
      return "Por favor, insira um email válido";
    }

    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.cpf.length < 3) {
      return "Seu cpf precisa ter mais de três taracteres";
    }

    return null;
  }

  dispose() {}
}
