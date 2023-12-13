import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schat/common/base_button.dart';
import 'package:schat/common/base_checkbox.dart';
import 'package:schat/common/base_input_form.dart';
import 'package:schat/common/base_input_pw.dart';
import 'package:schat/components/login/text_link.dart';
import 'package:schat/components/login/text_rules_link.dart';
import 'package:schat/layout/auth_layout.dart';
import 'package:schat/presentation/controllers/login/login_controller.dart';
// builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text('Lỗi: ${snapshot.error}')),
//             );
//           });
//         } else if (snapshot.hasData) {
//           final authController = Get.find<AuthController>();

//           authController.setToken(snapshot.data['metadata']['accessToken']);
//           saveToken(snapshot.data['metadata']['accessToken']);

//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text("Suc: ${snapshot.data['message']}")),
//             );
//             Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => Home()),
//             );
//           });
//         }
class LoginForm extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: AuthLayout(
          body: Column(
            children: <Widget>[
              const Text(
                'Đăng nhập thành viên',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1F2937), // Màu sắc cho slogan
                    fontSize: 26.2,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Cộng động nhà đầu tư chuyên nghiệp',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF4B5563), // Màu sắc cho slogan
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 16.0),
              BaseInputForm(
                label: 'Tên người dùng',
                hintText: 'Tên người dùng',
                iconPath: 'assets/icons/person.png',
                controller: controller.emailController,
              ),
              const SizedBox(height: 16.0),
              BasePasswordInput(
                label: 'Mật khẩu',
                hintText: 'Nhập mật khẩu',
                iconPath: 'assets/icons/person.png',
                controller: controller.passwordController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BaseCheckBox(label: 'Ghi nhớ'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Quên mật khẩu',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight
                            .bold, // Màu sắc của link thường là màu xanh
                        decoration: TextDecoration
                            .underline, // Gạch chân để chỉ là có thể nhấn vào
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              BaseButton(
                label: "Đăng nhập",
                onPressed: controller.onLogin,
                // isLoading: snapshot.connectionState == ConnectionState.waiting,
              ),
              const SizedBox(height: 7.0),
              RuleLinkText(),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: LoginLinkText(),
              )
            ],
          ),
        ));
  }
}
