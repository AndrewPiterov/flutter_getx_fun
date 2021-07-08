import 'package:flutter/material.dart';
import 'package:flutter_getx_fun/login_controller.dart';
import 'package:get/get.dart';
import 'package:speed_up/speed_up.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
                onChanged: (val) {
                  controller.changeName(val);
                },
              ),
            ),
            10.h,
            Container(
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
                onChanged: (val) => controller.changePassword(val),
              ),
            ),
            20.h,
            Obx(
              () => ElevatedButton(
                onPressed: !controller.isValidForm ? null : () {},
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
