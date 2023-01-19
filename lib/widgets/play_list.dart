import 'package:flutter/material.dart';
import '../theme/pallet.dart';

class PlayList extends StatelessWidget {
  final String shivoviName;
  final String shivoviLabel;
  final String shivoviImage;
  const PlayList(
      {super.key,
      required this.shivoviName,
      required this.shivoviLabel,
      required this.shivoviImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      decoration: const BoxDecoration(
        color: Pallet.iconBtnColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 60,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  child: Image(
                    image: AssetImage(shivoviImage),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shivoviName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    shivoviLabel,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: const Icon(
              Icons.play_circle_outline_rounded,
              color: Pallet.btnInColor,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
