class FormValidators {
  static String? isValidEmail(String? value) {
    if (value == null ||
        value.isEmpty ||
        !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'Por favor ingrese un email válido';
    }
    return null;
  }

  static String? isValidPassword(String? text) {
    if (text == null || text.length < 6) {
      return "Esta contraseña es muy corta";
    }
    return null;
  }
}
