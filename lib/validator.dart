class Validator {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Required Field";
    }
    RegExp regExp = RegExp(
        "([!#-'*+/-9=?A-Z^-~-]+(\.[!#-'*+/-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~]))+\")@([!#-'*+/-9=?A-Z^-~-]+(\.[!#-'*+/-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])");

    if (!regExp.hasMatch(email)) {
      return "Please enter a valid email id";
    }
  }
  static String? validatePassword(String password){
    if (password.isEmpty) {
      return "Required Field";
    }
    if (password.length<8) {
      return "Please enter atleast 8 character for password";
    }
  }
}
