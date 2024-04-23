// Regular expression for email validation
bool isValidEmail(String value) {
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegExp.hasMatch(value);
}

bool isValidName(String input) {
  final nameRegex = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)?$');
  return nameRegex.hasMatch(input);
}

bool isValidPhoneNumber(String phoneNumber) {
  final RegExp phoneRegex = RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\./0-9]*$');
  return phoneRegex.hasMatch(phoneNumber);
}

bool isValidUPI(String upiId) {
  RegExp regExp = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z]+$');
  return regExp.hasMatch(upiId);
}
