import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Statistika, Profil }
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavStatistika,
      activeIcon: ImageConstant.imgNavStatistika,
      title: "Statistika",
      type: BottomBarEnum.Statistika,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfil,
      activeIcon: ImageConstant.imgNavProfil,
      title: "Profil",
      type: BottomBarEnum.Profil,
    )
  ];

  // Inside CustomBottomBarState class

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.v,
      decoration: BoxDecoration(
        color: appTheme.gray50,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: buildBottomBarItem(index),
            activeIcon: buildBottomBarItem(index, isActive: true),
            label: '',
          );
        }),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          widget.onChanged?.call(bottomMenuList[index].type);
        },
      ),
    );
  }

  Widget buildBottomBarItem(int index, {bool isActive = false}) {
    final item = bottomMenuList[index];
    final iconColor = isActive
        ? theme.colorScheme.onSecondaryContainer
        : theme.colorScheme.onPrimaryContainer;
    final containerColor = isActive ? Colors.black : appTheme.gray50;

    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isActive) {
            selectedIndex = index;
          }
        });
        widget.onChanged?.call(bottomMenuList[index].type);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: isActive ? item.activeIcon : item.icon,
            height: 24.adaptSize,
            width: 24.adaptSize,
            color: iconColor,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              item.title ?? "",
              style: isActive
                  ? CustomTextStyles.labelLargeOnPrimaryContainer.copyWith(color: iconColor)
                  : theme.textTheme.labelLarge!.copyWith(color: iconColor),
            ),
          )
        ],
      ),
    );
  }

}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
