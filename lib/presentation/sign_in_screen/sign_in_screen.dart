import 'package:clothing_erp/presentation/statistic_container_screen/statistic_container_screen.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

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
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StatisticContainerScreen())),
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
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

  /// Section Widget
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
          controller: passwordoneController,
          hintText: "Parol",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 14.v,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgHide,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 52.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 18.v,
            bottom: 18.v,
          ),
        )
      ],
    );
  }
}
