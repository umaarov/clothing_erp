import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

class CreateProductScreen extends StatefulWidget {
  CreateProductScreen({Key? key}) : super(key: key);

  @override
  _CreateProductScreenState createState() => _CreateProductScreenState();
}

class _CreateProductScreenState extends State<CreateProductScreen> {
  TextEditingController productquantityController = TextEditingController();
  TextEditingController basepriceoneController = TextEditingController();
  TextEditingController sellingpriceController = TextEditingController();
  TextEditingController modelplaceholdeController = TextEditingController();
  TextEditingController coloroneController = TextEditingController();
  TextEditingController productquantity1Controller = TextEditingController();
  TextEditingController commentoneController = TextEditingController();

  XFile? _imageFile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26),
          child: Column(
            children: [
              SizedBox(height: 26),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        _buildColumnUploadIcon(context),
                        SizedBox(height: 12),
                        _buildInputField1(context),
                        SizedBox(height: 12),
                        _buildInputField2(context),
                        SizedBox(height: 12),
                        _buildInputField3(context),
                        SizedBox(height: 12),
                        _buildInputField4(context),
                        SizedBox(height: 13),
                        _buildInputField5(context),
                        SizedBox(height: 12),
                        _buildInputField6(context),
                        SizedBox(height: 12),
                        _buildInputField7(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildQoShish(context),
      ),
    );
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = pickedImage;
      });
    }
  }

  Widget _buildSelectedImageWidget() {
    return _imageFile == null
        ? Placeholder()
        : Image.file(
            File(_imageFile!.path),
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          );
  }

  Widget _buildImageSelectionButton(BuildContext context) {
    return ElevatedButton(
      onPressed: _pickImage,
      child: Text("Select Image from Gallery"),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 4.v,
          bottom: 4.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Mahsulot qo’shish",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgMore51,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 4.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnUploadIcon(BuildContext context) {
    return DottedBorder(
      color: appTheme.blueGray200,
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      radius: Radius.circular(10),
      borderType: BorderType.RRect,
      dashPattern: [2, 2],
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 35.h,
          vertical: 69.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSelectedImageWidget(),
            _buildImageSelectionButton(context),
            CustomImageView(
              imagePath: ImageConstant.imgUploadIcon,
              height: 59.v,
              width: 68.h,
            ),
            SizedBox(height: 16.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Drag & drop files or",
                    style: CustomTextStyles.titleMediumPoppinsGray80001,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "Browse",
                    style: CustomTextStyles.titleMediumPoppinsPrimary.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 17.v),
            SizedBox(
              width: 314.h,
              child: Text(
                "Supported formates: JPEG, PNG, GIF, MP4, PDF, PSD, AI, Word, PPT",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmallPoppinsGray700.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mahsulot nomi",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: productquantityController,
          hintText: "Mahsulot nomi",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tan narxi",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: basepriceoneController,
          hintText: "Tan narxi",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sotuv narxi",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: sellingpriceController,
          hintText: "Sotuv narxi",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Modeli",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: modelplaceholdeController,
          hintText: "Modeli",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField5(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rangi",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: coloroneController,
          hintText: "Rangi",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mahsulot soni",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: productquantity1Controller,
          hintText: "Mahsulot soni",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Izoh",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: commentoneController,
          hintText: "Izoh",
          textInputAction: TextInputAction.done,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildQoShish(BuildContext context) {
    return CustomElevatedButton(
      height: 46.v,
      text: "Qo’shish",
      margin: EdgeInsets.only(
        left: 50.h,
        right: 50.h,
        bottom: 36.v,
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
