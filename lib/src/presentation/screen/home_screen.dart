import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('home');
  }
}
