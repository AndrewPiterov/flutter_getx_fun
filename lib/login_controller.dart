import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:speed_up/speed_up.dart';

class LoginController extends GetxController {
  final _username = ''.obs;
  String get username => _username.value;

  final _password = ''.obs;
  String get password => _password.value;

  final _isValidForm = false.obs;
  bool get isValidForm => _isValidForm.value;

  Stream<bool> get isValidForm$ =>
      CombineLatestStream.combine2<String?, String?, bool>(
          _username.stream, _password.stream, (username, password) {
        final res =
            !isStringNullOrEmpty(username) && !isStringNullOrEmpty(password);
        _isValidForm.value = res;
        return res;
      });

  @override
  void onInit() {
    super.onInit();
    // _username.value = '';
    // _password.value = '';
  }

  void changeName(val) {
    _username.value = val;
  }

  void changePassword(val) {
    _password.value = val;
  }
}
