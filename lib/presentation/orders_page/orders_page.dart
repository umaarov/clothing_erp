import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart'; // ignore_for_file: must_be_immutable

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersPageState createState() => OrdersPageState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OrdersPageState extends State<OrdersPage>
    with AutomaticKeepAliveClientMixin<OrdersPage> {
  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  TextEditingController productquantityController = TextEditingController();

  TextEditingController productmodelController = TextEditingController();

  TextEditingController taCounterController = TextEditingController();

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
            children: [SizedBox(height: 30.v), _buildTableslight(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTableslight(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.outlineSecondaryContainer,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 15.v,
            ),
            decoration: AppDecoration.outlineGray,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Filter",
                      borderDecoration: SearchViewStyleHelper.outlineGray,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomSearchView(
                      controller: searchController1,
                      hintText: "Search",
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
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
                    "Soni",
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
                            decoration: IconButtonStyleHelper
                                .outlineSecondaryContainerTL12,
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
          ),
          _buildRecentOrder(
            context,
            text1: "Iphone 11 pro",
            text2: "10 ta",
            image1: ImageConstant.imgEye,
          ),
          _buildRecentOrder(
            context,
            text1: "Iphone 11 pro",
            text2: "15 ta",
            image1: ImageConstant.imgEyeGray600,
          ),
          Container(
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: CustomFloatingTextField(
                          controller: productquantityController,
                          labelText: "Mahsulot nomi",
                          labelStyle: theme.textTheme.bodyMedium!,
                          hintText: "Mahsulot nomi",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: CustomFloatingTextField(
                          controller: productmodelController,
                          labelText: "Modeli",
                          labelStyle: theme.textTheme.bodyMedium!,
                          hintText: "Modeli",
                        ),
                      ),
                    )
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
                            style: CustomTextStyles
                                .bodySmallPoppinsPrimaryContainer,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "100 000 UZS",
                            style: theme.textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: CustomFloatingTextField(
                          controller: taCounterController,
                          labelText: "Mahsulot soni",
                          labelStyle: theme.textTheme.bodyMedium!,
                          hintText: "Mahsulot soni",
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrder(
    BuildContext context, {
    required String text1,
    required String text2,
    required String image1,
  }) {
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
              text1,
              style: CustomTextStyles.bodySmallPoppinsGray800.copyWith(
                color: appTheme.gray800,
              ),
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
              text2,
              style: CustomTextStyles.bodySmallPoppinsGray800.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
          Container(
            height: 44.v,
            width: 129.h,
            padding: EdgeInsets.symmetric(
              horizontal: 52.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer,
            child: CustomImageView(
              imagePath: image1,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}
