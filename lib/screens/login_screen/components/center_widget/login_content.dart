import 'package:app1/screens/login_screen/components/center_widget/top_text.dart';
import 'package:flutter/material.dart';

enum Screens { welcomeBack, createAccount }

class Logincontent extends StatelessWidget {
  const Logincontent({super.key});
  Widget inputField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.white,
                hintText: hint),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.createAccount;
    return Stack(
      children: [
        const Positioned(
            top: 120, left: 24, child: Toptext(screen: currentScreen)),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  inputField("isim"),
                  inputField("Soyisim"),
                  inputField("Email"),
                  inputField("Şifre"),
                  inputField("Şifre Tekrarı")
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
