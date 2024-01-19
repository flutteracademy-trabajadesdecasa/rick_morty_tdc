import 'package:flutter/material.dart';

class StartAppPage extends StatelessWidget {
  const StartAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
