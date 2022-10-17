// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../features/auth/presentation/screens/signin_page.dart' as _i1;
import '../../../features/home/home_page.dart' as _i3;
import '../../../features/wallet/topup_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SigninRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SigninPage());
    },
    TopupRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.TopupPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SigninRoute.name, path: '/signin-page'),
        _i4.RouteConfig(TopupRoute.name, path: '/topup-page'),
        _i4.RouteConfig(HomeRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SigninPage]
class SigninRoute extends _i4.PageRouteInfo<void> {
  const SigninRoute() : super(SigninRoute.name, path: '/signin-page');

  static const String name = 'SigninRoute';
}

/// generated route for
/// [_i2.TopupPage]
class TopupRoute extends _i4.PageRouteInfo<void> {
  const TopupRoute() : super(TopupRoute.name, path: '/topup-page');

  static const String name = 'TopupRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}
