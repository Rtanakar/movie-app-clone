import 'package:flutter/material.dart';
import '../theme/pallet.dart';

class Cast extends StatelessWidget {
  final String castImage;
  final String castLabel;
  final String castName;
  const Cast(
      {super.key,
      required this.castImage,
      required this.castLabel,
      required this.castName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            image: DecorationImage(
                image: AssetImage(
                  castImage,
                ),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              castLabel,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
             Text(
              castName,
              style: const TextStyle(
                color: Pallet.textColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
