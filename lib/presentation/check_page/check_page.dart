import 'package:clothing_erp/presentation/create_product_screen/create_product_screen.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_search_view.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({Key? key})
      : super(
          key: key,
        );

  @override
  CheckPageState createState() => CheckPageState();
}

class CheckPageState extends State<CheckPage>
    with AutomaticKeepAliveClientMixin<CheckPage> {
  TextEditingController searchController = TextEditingController();

  TextEditingController productquantityRowController = TextEditingController();

  TextEditingController modelRowController = TextEditingController();

  TextEditingController priceFloatingTextFieldController =
      TextEditingController();

  TextEditingController colorFloatingTextFieldController =
      TextEditingController();

  TextEditingController statusFloatingTextFieldController =
      TextEditingController();

  TextEditingController taCounterFloatingTextFieldController =
      TextEditingController();

  TextEditingController commentFloatingTextFieldController =
      TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    _buildMahsulotButton(context),
                    SizedBox(height: 29.v),
                    Container(
                      decoration: AppDecoration.outlineGray100011,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildHeaderRow(context),
                          _buildContainerRow(context),
                          _buildContainerRow1(context),
                          _buildContainerRow2(context),
                          _buildTableselementColumn(context)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMahsulotButton(BuildContext context) {
    return CustomElevatedButton(
      height: 52.v,
      text: "Mahsulot qo’shish",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CreateProductScreen(),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDeleteButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 70.h,
      text: "Delete",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgTrash,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 62.h,
      text: "Filter",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSliders,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16.v,
        bottom: 15.v,
      ),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDeleteButton(context),
          _buildFilterButton(context),
          CustomSearchView(
            width: 192.h,
            controller: searchController,
            hintText: "Search",
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainerRow(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray10001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Text(
              "Nomi",
              style: CustomTextStyles.labelMediumPoppinsGray800,
            ),
          ),
          Container(
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Text(
              "Holat",
              style: CustomTextStyles.labelLargePoppinsGray800,
            ),
          ),
          Container(
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 35.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration:
                          IconButtonStyleHelper.outlineSecondaryContainer,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgChevronLeft,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      decoration:
                          IconButtonStyleHelper.outlineSecondaryContainerTL12,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainerRow1(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray10001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillGray200,
            child: Text(
              "Iphone 11 pro",
              style: CustomTextStyles.bodySmallPoppinsGray800,
            ),
          ),
          Container(
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillGray200,
            child: Text(
              "Tasdiqlangan",
              style: CustomTextStyles.bodySmallPoppinsGreen400,
            ),
          ),
          Container(
            height: 44.v,
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 52.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillGray200,
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTasdiqlanmaganButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      width: 129.h,
      text: "Tasdiqlanmagan",
      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
      buttonTextStyle: CustomTextStyles.bodySmallPoppinsPinkA200,
    );
  }

  /// Section Widget
  Widget _buildContainerRow2(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray10001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: Text(
              "Iphone 11 pro",
              style: CustomTextStyles.bodySmallPoppinsGray800,
            ),
          ),
          _buildTasdiqlanmaganButton(context),
          Container(
            height: 44.v,
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 52.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgEyeGray600,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductquantityRow(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 4.h),
        child: CustomFloatingTextField(
          controller: productquantityRowController,
          labelText: "Mahsulot nomi",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Mahsulot nomi",
          contentPadding: EdgeInsets.fromLTRB(26.h, 21.v, 26.h, 5.v),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildModelRow(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: CustomFloatingTextField(
          controller: modelRowController,
          labelText: "Modeli",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Modeli",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceFloatingTextField(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: CustomFloatingTextField(
          controller: priceFloatingTextFieldController,
          labelText: "Sotuv narxi",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Sotuv narxi",
          contentPadding: EdgeInsets.fromLTRB(8.h, 19.v, 8.h, 3.v),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColorFloatingTextField(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 4.h),
        child: CustomFloatingTextField(
          controller: colorFloatingTextFieldController,
          labelText: "Rangi",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Rangi",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusFloatingTextField(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: CustomFloatingTextField(
          controller: statusFloatingTextFieldController,
          labelText: "Holat",
          labelStyle: CustomTextStyles.bodyMediumPinkA200,
          hintText: "Holat",
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTaCounterFloatingTextField(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 4.h),
        child: CustomFloatingTextField(
          controller: taCounterFloatingTextFieldController,
          labelText: "Mahsulot soni",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Mahsulot soni",
          contentPadding: EdgeInsets.fromLTRB(8.h, 19.v, 8.h, 3.v),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentFloatingTextField(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: CustomFloatingTextField(
          controller: commentFloatingTextFieldController,
          labelText: "Izoh",
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "Izoh",
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTableselementColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProductquantityRow(context),
              _buildModelRow(context)
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 4.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 2.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tan narxi",
                      style: CustomTextStyles.bodySmallPoppinsPrimaryContainer,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "100 000 UZS",
                      style: theme.textTheme.bodyMedium,
                    )
                  ],
                ),
              ),
              _buildPriceFloatingTextField(context)
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildColorFloatingTextField(context),
              _buildStatusFloatingTextField(context)
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTaCounterFloatingTextField(context),
              _buildCommentFloatingTextField(context)
            ],
          ),
          SizedBox(height: 16.v),
          Container(
            width: 348.h,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 3.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              "Tahrirlash",
              style: CustomTextStyles.bodyMediumPrimary,
            ),
          )
        ],
      ),
    );
  }
}
