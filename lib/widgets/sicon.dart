import 'package:flutter/material.dart';
import 'package:shivovi_app/screens/play_screen.dart';
import 'package:shivovi_app/services/auth_service.dart';
import 'package:shivovi_app/theme/pallet.dart';

class Sicon extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontal;

  const Sicon(
      {super.key,
      required this.iconPath,
      required this.label,
      this.horizontal = 100});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextButton.icon(
        onPressed: () {
          AuthService().signInGoogle();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const PlayScreen()));
        },
        icon: Image.asset(
          iconPath,
          width: 30,
          color: Colors.white,
        ),
        label: Text(
          label,
          style: const TextStyle(
            color: Pallet.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: horizontal),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Pallet.textColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
