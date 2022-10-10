import 'package:app1/screens/login_screen/components/center_widget/bottom_text.dart';
import 'package:app1/screens/login_screen/components/center_widget/top_text.dart';
import 'package:app1/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

enum Screens { welcomeBack, createAccount }

class Logincontent extends StatelessWidget {
  const Logincontent({super.key});
  Widget inputField(String hint, IconData iconData) {
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
                hintText: hint,
                prefixIcon: Icon(iconData),
              ),
            ),
          ),
        ));
  }

  Widget loginButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: const StadiumBorder(),
            primary: kSecondaryColor,
            elevation: 8,
            shadowColor: Colors.black87),
        onPressed: () {},
        child: Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: kPrimayColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Veya',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: kPrimayColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget Logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/images/facebook.png"),
        SizedBox(width: 24),
        Image.asset("assets/images/google.png")
      ]),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Şifremi Unuttum ?",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: kSecondaryColor),
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
                  children: currentScreen == Screens.createAccount
                      ? [
                          inputField("isim", Ionicons.person_add_outline),
                          inputField("Soyisim", Ionicons.person_add_outline),
                          inputField("Email", Ionicons.mail_open_outline),
                          inputField("Şifre", Ionicons.key_outline),
                          loginButton("Kayıt ol"),
                          orDivider(),
                          Logos()
                        ]
                      : [
                          inputField("Email", Ionicons.mail_open_outline),
                          inputField("Şifre", Ionicons.key_outline),
                          loginButton("Giriş Yap"),
                          forgotPassword(),
                        ])
            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: BottomText(screen: currentScreen),
          ),
        )
      ],
    );
  }
}
