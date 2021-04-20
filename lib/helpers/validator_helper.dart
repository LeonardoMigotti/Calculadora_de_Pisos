const kRequiredField = 'Campo obrigatório';

class ValidatorHelper {
  static String validarDados(String text) {
    if (text.isEmpty) {
      return kRequiredField;
    }
    if (text.length > 0 && text == '0') {
      return 'O valor nao pode ser 0';
    }
  }
}
