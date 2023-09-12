import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class MyScreen extends StatelessWidget {
  const MyScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('my screen');
  }
}
