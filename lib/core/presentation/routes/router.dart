import 'package:auto_route/auto_route.dart';
import 'package:yes_pay_nepal/features/home/home_page.dart';
import 'package:yes_pay_nepal/features/splash_page/splash_page.dart';
import 'package:yes_pay_nepal/features/wallet/topup_page.dart';

import '../../../features/auth/presentation/screens/signin_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SigninPage,),
    AutoRoute(page: TopupPage,),
    AutoRoute(page: HomePage,),
  ],
)

class $AppRouter {}



/*
flutter packages pub run build_runner build --delete-conflicting-outputs
*/


// class Routes {
//   const Routes._();
//
//   static const String home = '/';
// }

