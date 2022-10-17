// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// import 'main_common.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';
//
// Future<void> main() async {
//   runZonedGuarded(() async {
//     await SentryFlutter.init(
//           (options) {
//         options.dsn =
//         'https://82fd353788344389be9460b414a1c00d@o553426.ingest.sentry.io/5733072';
//       },
//     );
//     mainCommon();
//     runApp(Application());
//   }, (exception, stackTrace) async {
//     await Sentry.captureException(exception, stackTrace: stackTrace);
//   });
// }


import 'package:flutter/material.dart';
import 'package:yes_pay_nepal/features/auth/presentation/screens/signin_page.dart';

void main() {
  runApp(
    SigninPage(),
  );
}

//https://gitlab.sit.com