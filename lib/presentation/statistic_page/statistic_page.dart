import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart'; // ignore_for_file: must_be_immutable

class StatisticPage extends StatelessWidget {
  const StatisticPage({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              _buildAllLearning(context),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildOutcome(
                  context,
                  floatingIcon: ImageConstant.imgFloatingIcon,
                  priceText: "6.564,34",
                  typeText: "Daromadlar",
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildOutcome(
                  context,
                  floatingIcon: ImageConstant.imgFloatingIconGray300,
                  priceText: "6.564,34",
                  typeText: "Xarajatlar",
                ),
              ),
              SizedBox(height: 12.v),
              _buildRowOylik(context),
              SizedBox(height: 15.v),
              SizedBox(
                height: 44.v,
                width: 95.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 35.v,
                        width: 78.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueA200.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 40.v,
                      width: 85.h,
                      text: "120",
                      buttonStyle: CustomButtonStyles.fillBlueA,
                      buttonTextStyle:
                      CustomTextStyles.titleSmallOnErrorContainer,
                      alignment: Alignment.topLeft,
                    )
                  ],
                ),
              ),
              _buildColumn(context),
              SizedBox(height: 19.v),
              _buildRowYan(context)
            ],
          ),
        ),
      ),
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
        text: "Statistika",
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
  Widget _buildAllLearning(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "6.564,34",
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Umumiy Statistika",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowOylik(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 46.h,
          right: 20.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 18.v,
                bottom: 16.v,
              ),
              child: Text(
                "Oylik",
                style: CustomTextStyles.labelLargeBluegray900,
              ),
            ),
            Spacer(
              flex: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 17.v),
              child: Text(
                "Haftalik",
                style: CustomTextStyles.labelLargeBluegray40001,
              ),
            ),
            Spacer(
              flex: 83,
            ),
            CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillOnErrorContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgCalendar,
              ),
              onTap: () => _showCalendarDialog(context),
            )
          ],
        ),
      ),
    );
  }
  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup8,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 207.h,
          vertical: 1.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup16,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: 12.adaptSize,
          width: 12.adaptSize,
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer,
            borderRadius: BorderRadius.circular(
              6.h,
            ),
            border: Border.all(
              color: appTheme.blueA200,
              width: 6.h,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowYan(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 5.0), // Adjust the initial padding
          for (final month in [
            "YAN",
            "FEV",
            "MAR",
            "APR",
            "MAY",
            "IYUN",
            "IYUL",
            "AVG",
            "SEN",
            "OKT",
            "NOY",
            "DEK",
          ])
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                month,
                style: theme.textTheme.labelMedium,
              ),
            ),
        ],
      ),
    );
  }


  /// Common widget
  Widget _buildOutcome(BuildContext context, {
    required String floatingIcon,
    required String priceText,
    required String typeText,
  }) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: floatingIcon,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  priceText,
                  style: CustomTextStyles.titleMedium16.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  typeText,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> _showCalendarDialog(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      // Do something with the picked date
      print('Selected date: $pickedDate');
    }
  }


}


