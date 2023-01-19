import 'package:flutter/material.dart';
import 'package:shivovi_app/screens/play_screen.dart';
import 'package:shivovi_app/theme/pallet.dart';
import 'package:shivovi_app/widgets/cast.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 7),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 94, 115, 175).withOpacity(1),
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    height: 4,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: Pallet.btnInColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                    width: 36,
                    child: Icon(
                      Icons.home_filled,
                      color: Pallet.btnInColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
                width: 36,
                child: Icon(
                  Icons.list,
                  color: Pallet.gbtnColor,
                ),
              ),
              const SizedBox(
                height: 36,
                width: 36,
                child: Icon(
                  Icons.download_for_offline,
                  color: Pallet.gbtnColor,
                ),
              ),
              const SizedBox(
                height: 36,
                width: 36,
                child: Icon(
                  Icons.person_outline_outlined,
                  color: Pallet.gbtnColor,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Pallet.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (_) => const PlayScreen()));
                    },
                    child: const Icon(
                      Icons.chevron_left_sharp,
                      size: 30,
                      color: Pallet.textColor,
                    ),
                  ),
                  const Icon(
                    Icons.download_done_rounded,
                    size: 30,
                    color: Pallet.textColor,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    color: Pallet.textColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/ml.webp'),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 8),
                          child: Container(
                            height: 40,
                            width: 130,
                            decoration: const BoxDecoration(
                              color: Pallet.iconBtnColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.play_arrow_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text(
                                    ' Watch',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Raya and the last dragon',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.share_outlined,
                    color: Pallet.textColor,
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    '•  2021',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    '•  Disney',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    '•  2 hr 50 min',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Mauris imperdiet orci dapibus Raya, a warrior, sets out to track down Sisu, a dragon, who gem which is now scattered all over the kingdom.',
                      style: TextStyle(color: Pallet.textColor),
                    ),
                    TextSpan(
                      text: 'More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Cast',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    size: 35,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    Cast(
                        castImage: 'assets/images/cast1.webp',
                        castLabel: 'Director',
                        castName: 'Don Hall'),
                    SizedBox(width: 30),
                    Cast(
                        castImage: 'assets/images/cast2.webp',
                        castLabel: 'Actor',
                        castName: 'RossButler'),
                    SizedBox(width: 30),
                    Cast(
                        castImage: 'assets/images/cast3.jpg',
                        castLabel: 'Actress',
                        castName: 'Gemma Chan'),
                    SizedBox(width: 30),
                    Cast(
                        castImage: 'assets/images/cast4.jpg',
                        castLabel: 'Actress',
                        castName: 'Kelly Marie Tran'),
                    SizedBox(width: 30),
                    Cast(
                        castImage: 'assets/images/cast5.jpeg',
                        castLabel: 'Actress',
                        castName: 'Benedict Wong'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Simillar movie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    size: 35,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/sm1.webp'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/bg.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/sm2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/pc.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/car3.webp'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/toy4.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/coco.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
