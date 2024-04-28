import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/create_product_screen/create_product_screen.dart';
import '../presentation/orders_tab_container_screen/orders_tab_container_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/statistic_container_screen/statistic_container_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String statisticContainerScreen = '/statistic_container_screen';

  static const String statisticPage = '/statistic_page';

  static const String ordersPage = '/orders_page';

  static const String ordersTabContainerScreen = '/orders_tab_container_screen';

  static const String checkPage = '/check_page';

  static const String createProductScreen = '/create_product_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    signInScreen: (context) => SignInScreen(),
    statisticContainerScreen: (context) => StatisticContainerScreen(),
    ordersTabContainerScreen: (context) => OrdersTabContainerScreen(),
    createProductScreen: (context) => CreateProductScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SignInScreen()
  };
}
