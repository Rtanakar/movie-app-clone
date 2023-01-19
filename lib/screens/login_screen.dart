import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shivovi_app/widgets/bg_image.dart';
import 'package:shivovi_app/widgets/sig_in_btn.dart';
import 'package:shivovi_app/widgets/sicon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          const BgImage(),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 450),
                Text(
                  'Anna, Elsa, Kristoff, Olaf and Sven leave Arendelle to travel to an ancient, autumn-bound forest of an enchanted land. They set out to find the origin of Elsa\'s powers in order to save their kingdom.',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const SignInBtn(),
                const SizedBox(height: 15),
                const Sicon(
                  iconPath: 'assets/images/google.png',
                  label: 'Continue with Google',
                  horizontal: 87,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
