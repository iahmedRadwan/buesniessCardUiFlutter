import 'package:flutter/material.dart';
import 'package:flutter_ui_task1/screens/software_card_info.dart';

void main() {
  runApp(const FirstTaskUi());
}

class FirstTaskUi extends StatelessWidget {
  const FirstTaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoftwareCardInfo(),
    );
  }
}
