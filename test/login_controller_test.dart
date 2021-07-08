import 'package:flutter_getx_fun/login_controller.dart';
import 'package:test/test.dart';

void main() {
  group('Given OBS field.', () {
    test('When set only name. Than form is not valid', () {
      // Arrange
      final controller = LoginController();

      // Act
      controller.changeName('Andrew');

      // Assert
      expect(controller.isValidForm, isFalse);
    });

    test('When set only password. Than form is not valid', () {
      // Arrange
      final controller = LoginController();

      // Act
      controller.changePassword('123456');

      // Assert
      expect(controller.isValidForm, isFalse);
    });

    test('When set username and password. Than form is valid', () {
      // Arrange
      final controller = LoginController();

      controller.isValidForm$.listen((event) {});

      // Act
      controller.changeName('Andrew');
      controller.changePassword('123456');

      // Assert
      expect(controller.isValidForm, isTrue);
    });
  });

  group('Given is form validation flag as Stream', () {
    test('When nothing set. Than flag is false', () async {
      // Arrange
      final controller = LoginController();

      expectLater(controller.isValidForm$, emits(false));

      // Act
      controller.changeName('');
      controller.changePassword('');
      // Assert
      //  expect(await controller.isValidForm$.first, isFalse);
    });

    test('When username and password set. Than flag is true', () async {
      // Arrange
      final controller = LoginController();

      expectLater(controller.isValidForm$, emits(true));

      // Act
      controller.changeName('Andrew');
      controller.changePassword('123456');

      // Assert
      // expect(await controller.isValidForm$.first, isTrue);
    });
  });
}
