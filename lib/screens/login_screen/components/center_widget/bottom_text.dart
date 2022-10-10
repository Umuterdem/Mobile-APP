import 'package:app1/screens/login_screen/components/center_widget/login_content.dart';
import 'package:app1/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final Screens screen;
  const BottomText({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: RichText(
          text: TextSpan(
              style: TextStyle(fontSize: 16, fontFamily: "Montserrat"),
              children: [
                TextSpan(
                    text: screen == Screens.createAccount
                        ? "Hesabım Var?"
                        : "Hesabım Yok?",
                    style: const TextStyle(
                        color: kPrimayColor, fontWeight: FontWeight.w600)),
                TextSpan(
                    text: screen == Screens.createAccount
                        ? "Giriş Yap"
                        : "Kayıt Ol",
                    style: const TextStyle(
                        color: kSecondaryColor, fontWeight: FontWeight.w600))
              ]),
        ),
      ),
    );
  }
}
