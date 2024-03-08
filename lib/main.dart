import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRoutes = Routes();

    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRoutes.router.routeInformationParser,
      routeInformationProvider: appRoutes.router.routeInformationProvider,
      routerDelegate: appRoutes.router.routerDelegate,
    );
  }
}
