class Tvalidators {
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "email required";
    }

    final emailregexp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    if (!emailregexp.hasMatch(email)) {
      return 'invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'password required';
    }

    if (password.length < 6) {
      return 'password must be more than 6 characters long';
    }
    if (password.contains(RegExp(r'[A-Z]'))) {
      return 'password must have at least 1 uppercase letter';
    }
    if (password.contains(RegExp(r'[0-9]'))) {
      return 'password must have at least 1 number';
    }
    if (password
        .contains(RegExp(r'^[a-zA-Z0-9!@#\$%^&*()_+{}\[\]:;<>,.?~\\/-]+$'))) {
      return 'password must have at least 1 special character';
    }
    return null;
  }
}
