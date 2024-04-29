import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';

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
              Container(
                  height: 300,
                  width: double.infinity,
                  padding: EdgeInsets.all(8.0),
                  child: chartToRun()),
              // _buildColumn(context),
              // SizedBox(height: 19.v),
              // // _buildRowYan(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget chartToRun() {
    LabelLayoutStrategy? xContainerLabelLayoutStrategy;
    ChartData chartData;
    ChartOptions chartOptions = const ChartOptions();
    // Example shows a mix of positive and negative data values.
    chartData = ChartData(
      dataRows: const [
        [2000.0, 1800.0, 2200.0, 2300.0, 1700.0, 1800.0],
        [1100.0, 1000.0, 1200.0, 800.0, 700.0, 800.0],
        [0.0, 100.0, -200.0, 150.0, -100.0, -150.0],
        [-800.0, -400.0, -300.0, -400.0, -200.0, -250.0],
      ],
      xUserLabels: const ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
      dataRowsLegends: const [
        'Big Corp',
        'Medium Corp',
        'Print Shop',
        'Bar',
      ],
      chartOptions: chartOptions,
    );
    var lineChartContainer = LineChartTopContainer(
      chartData: chartData,
      xContainerLabelLayoutStrategy: xContainerLabelLayoutStrategy,
    );

    var lineChart = LineChart(
      painter: LineChartPainter(
        lineChartContainer: lineChartContainer,
      ),
    );
    return lineChart;
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
          SizedBox(width: 5.0),
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
  Widget _buildOutcome(
    BuildContext context, {
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
