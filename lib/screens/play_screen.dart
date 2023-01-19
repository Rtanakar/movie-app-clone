import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shivovi_app/screens/movie_detail.dart';
import 'package:shivovi_app/theme/pallet.dart';
import 'package:shivovi_app/widgets/movie.dart';
import 'package:shivovi_app/widgets/play_list.dart';
import '../widgets/text_frfi_sh.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
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
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/bh.jpg'),
                          maxRadius: 25,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Hello ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Shivam 👋',
                                  style: GoogleFonts.ptSans(
                                      color: Pallet.textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            const Text(
                              'Enjoy your Favourite Movie',
                              style: TextStyle(
                                color: Color.fromARGB(255, 137, 135, 138),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Pallet.iconBtnColor,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/notification.png',
                          height: 17,
                          color: Pallet.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const TextFrfiSh(),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Text(
                      'Now ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Showing',
                      style: TextStyle(
                        color: Pallet.textColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Movie(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const MovieDetail()));
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Continue Watching',
                      style: TextStyle(
                        color: Pallet.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View More',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/thorrg.jpg',
                  shivoviName: 'Thor: Ragnarak',
                  shivoviLabel: 'Action, Fantasy'),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/rvl.webp',
                  shivoviName: 'Raya and the Last Dragon',
                  shivoviLabel: 'Family, Adventure'),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/h6.jpg',
                  shivoviName: 'Big Hero 6',
                  shivoviLabel: 'Family, Adventure'),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/paf.jpg',
                  shivoviName: 'Phineas and Ferb',
                  shivoviLabel: 'Family'),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/stw.jpg',
                  shivoviName: 'Star Wars: Visions',
                  shivoviLabel: 'Sci-fi'),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/got.jpeg',
                  shivoviName: 'Game of Thrones',
                  shivoviLabel: 'Drama '),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/avt.jpg',
                  shivoviName: 'Avatar: The Way of Water',
                  shivoviLabel: 'Sci-fi, Action'),
              const SizedBox(height: 15),
              const PlayList(
                  shivoviImage: 'assets/images/cb2.jpg',
                  shivoviName: 'Chhota Bheem (छोटा भीम)',
                  shivoviLabel: 'Kid\'s'),
            ],
          ),
        ],
      ),
    );
  }
}
