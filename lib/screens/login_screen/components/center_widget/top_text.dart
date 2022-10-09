import 'package:app1/screens/login_screen/components/center_widget/login_content.dart';
import 'package:flutter/material.dart';

class Toptext extends StatefulWidget {
  final Screens screen;
  const Toptext({super.key, required this.screen});

  @override
  State<Toptext> createState() => _ToptextState();
}

class _ToptextState extends State<Toptext> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.screen == Screens.createAccount
          ? "Hesap\n       Oluştur"
          : "Tekrar\rHoşgeldiniz",
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
    );
  }
}
