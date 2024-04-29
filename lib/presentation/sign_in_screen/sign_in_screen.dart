import 'dart:convert';

import 'package:clothing_erp/presentation/orders_tab_container_screen/orders_tab_container_screen.dart';
import 'package:clothing_erp/presentation/statistic_container_screen/statistic_container_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tizimga kirish",
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Blablablabla",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 47.v),
                    _buildEmailField(context),
                    SizedBox(height: 30.v),
                    _buildPasswordField(context),
                    SizedBox(height: 50.v),
                    CustomElevatedButton(
                      text: "Sign In",
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPoppinsGray50,
                      onPressed: _signIn,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: CustomTextStyles.titleSmallPoppins,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "Email",
          textInputType: TextInputType.emailAddress,
        )
      ],
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Parol",
          style: CustomTextStyles.titleSmallPoppins,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Parol",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        )
      ],
    );
  }

  void _signIn() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if (response.statusCode == 200) {
        final List<dynamic> responseData = jsonDecode(response.body);

        final user = responseData.firstWhere((user) => user['email'] == email,
            orElse: () => null);

        if (user != null) {
          if (password == user['id'].toString()) {
            final prefs = await SharedPreferences.getInstance();
            prefs.setInt('userId', user['id']);
            prefs.setString('userName', user['name']);
            prefs.setString('userEmail', user['email']);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StatisticContainerScreen(),
              ),
            );
            return;
          }
        } else if (email == 'manager@gmail.com' && password == '1234') {
          // Navigate to OrdersPage
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrdersTabContainerScreen(),
            ),
          );
          return;
        }

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Incorrect email or password.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text('Failed to sign in. Please try again later.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content:
              Text('An unexpected error occurred. Please try again later.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
