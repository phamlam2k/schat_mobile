import 'package:flutter/material.dart';
import 'package:schat/apis/auth.dart';
import 'package:schat/common/base_button.dart';
import 'package:schat/common/base_checkbox.dart';
import 'package:schat/common/base_input_form.dart';
import 'package:schat/common/base_input_pw.dart';
import 'package:schat/components/login/text_link.dart';
import 'package:schat/components/login/text_rules_link.dart';
import 'package:schat/layout/auth_layout.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  Future? _loginFuture;

  // Add TextEditingControllers to manage the input text
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // Hãy chắc chắn là dispose các controller khi không cần nữa
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  onLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      // Nếu form hợp lệ, lưu trữ các field và in giá trị ra
      _formKey.currentState?.save();
      // Lấy giá trị từ các field sử dụng các controller

      setState(() {
        _loginFuture = login(emailController.text, passwordController.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loginFuture,
        builder: (context, snapshot) {
          return Form(
              key: _formKey,
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
                      controller: emailController,
                    ),
                    const SizedBox(height: 16.0),
                    BasePasswordInput(
                      label: 'Mật khẩu',
                      hintText: 'Nhập mật khẩu',
                      iconPath: 'assets/icons/person.png',
                      controller: passwordController,
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
                      onPressed: onLogin,
                      isLoading:
                          snapshot.connectionState == ConnectionState.waiting,
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
        });
  }
}
