import 'package:flutter/material.dart';
import 'package:flutter_kookminpt_sample/src/config/router/app_router.dart';
import 'package:flutter_kookminpt_sample/src/locator.dart';
import 'package:flutter_kookminpt_sample/src/theme/theme.dart';

void main() async {

  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Flutter Demo',
      theme: AppTheme.light
    );
  }
}
