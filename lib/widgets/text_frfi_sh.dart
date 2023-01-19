import 'package:flutter/material.dart';
import 'package:shivovi_app/theme/pallet.dart';

class TextFrfiSh extends StatelessWidget {
  const TextFrfiSh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Pallet.textColor,
          ),
          suffixIcon: const Icon(
            Icons.toc_outlined,
            color: Pallet.textColor,
          ),
          hintText: 'Search shivovi',
          hintStyle: const TextStyle(color: Pallet.textColor),
          fillColor: const Color.fromARGB(255, 127, 105, 149),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 32, 36, 48),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 32, 36, 48),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
