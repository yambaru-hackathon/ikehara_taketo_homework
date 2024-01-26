import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final images = [
    'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMpSvIB5s853oAEr-ZAu2mnotRDaZjrTEZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEy0nWZuPirmiMvtUt2kZFiDDHf6YKuhQKSQ&usqp=CAU',
    'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMpSvIB5s853oAEr-ZAu2mnotRDaZjrTEZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEy0nWZuPirmiMvtUt2kZFiDDHf6YKuhQKSQ&usqp=CAU',
    'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMpSvIB5s853oAEr-ZAu2mnotRDaZjrTEZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEy0nWZuPirmiMvtUt2kZFiDDHf6YKuhQKSQ&usqp=CAU',
    'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMpSvIB5s853oAEr-ZAu2mnotRDaZjrTEZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEy0nWZuPirmiMvtUt2kZFiDDHf6YKuhQKSQ&usqp=CAU',
    'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMpSvIB5s853oAEr-ZAu2mnotRDaZjrTEZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEy0nWZuPirmiMvtUt2kZFiDDHf6YKuhQKSQ&usqp=CAU',
    'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMpSvIB5s853oAEr-ZAu2mnotRDaZjrTEZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEy0nWZuPirmiMvtUt2kZFiDDHf6YKuhQKSQ&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: const Size.fromHeight(40), child: AppBar()),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      const Text(
                        'instagram',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                        size: 17,
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      IconButton(
                        // ignore: sort_child_properties_last
                        icon: const Icon(
                          Icons.notifications_outlined,
                          size: 34,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        // ignore: sort_child_properties_last
                        icon: const Icon(
                          Icons.more_horiz,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Image.network(
                        'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
                        width: 60,
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Text(
                            '7,041',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '投稿',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        children: [
                          Text(
                            '4.6億',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'フォロワー',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        children: [
                          Text(
                            '99',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'フォロー中',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '#YoursToMake',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'help.instagram.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: const Text(
                              'フォロー中',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: const Text(
                              'メッセージ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            )
          ]),
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
