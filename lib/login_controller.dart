import 'package:get/get.dart';
import 'package:speed_up/speed_up.dart';

class LoginController extends GetxController {
  final _username = ''.obs;
  String get username => _username.value;

  final _password = ''.obs;
  String get password => _password.value;

  final _isValidForm = false.obs;
  bool get isValidForm => _isValidForm.value;

  bool getFormValidity() => _isValidForm.value;

  void changeName(val) {
    _username.value = val;
    _isValidForm.value =
        !isStringNullOrEmpty(username) && !isStringNullOrEmpty(password);
  }

  void changePassword(val) {
    _password.value = val;
    _isValidForm.value =
        !isStringNullOrEmpty(username) && !isStringNullOrEmpty(password);
  }
}
