import 'package:flutter/material.dart';
import 'package:shivovi_app/theme/pallet.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [
            Pallet.bgimgColor,
            Pallet.bgimgColor,
            Pallet.textColor,
            Pallet.textColor,
            Pallet.textColor,
            Pallet.textColor,
            Pallet.textColor,
            Pallet.textColor,
            Pallet.textColor,
            Pallet.bgColor,
            Pallet.bgimgColor,
            Pallet.bgimgColor,
            Pallet.bgimgColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpeg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Pallet.bgimgColor, BlendMode.lighten)),
          ),
        ),
      ),
    );
  }
}
