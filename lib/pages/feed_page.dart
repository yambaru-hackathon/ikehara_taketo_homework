import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int activeIndex1 = 0;
  int activeIndex2 = 0;

  final images = [
    'https://user0514.cdnw.net/shared/img/thumb/GAK_nekocafenonekocyan20130921_TP_V.jpg',
    'https://pbs.twimg.com/media/GDAj7kHakAAk9R4?format=jpg&name=900x900',
    'https://yt3.googleusercontent.com/zQRVbFYIbDF_zIj5l-iOieZ7V0TJGHTyMbU7MwnOhO0dRzv51wXCnohwwafQ6P6l1mzd8Cxmzw=s900-c-k-c0x00ffffff-no-rj',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40), child: AppBar()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Column(
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
                          flex: 5,
                        ),
                        const Column(
                          children: [
                            Text(
                              'INSTAGRAM',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '投稿',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 7,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
                                width: 40,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'instagram',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'サンディエゴ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    // ignore: sort_child_properties_last
                                    icon: const Icon(
                                      Icons.more_horiz,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 400,
                                initialPage: 0,
                                viewportFraction: 1,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) => setState(() {
                                  activeIndex1 = index;
                                }),
                              ),
                              itemCount: images.length,
                              itemBuilder: (context, index, realIndex) {
                                final path = images[index];
                                return InstagramPostItem(imageUrl: path);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.mode_comment_outlined,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.send_outlined,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  buildIndicator1(),
                                  const Spacer(
                                    flex: 4,
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.bookmark_border,
                                      size: 32,
                                    ),
                                    onPressed: () {},
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
                                    '「いいね!」704,899件',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  ReadMoreText(
                                    'にゃーん！このかわいらしい猫ちゃんはまさに「にゃんこ界のトップアイドル」だにゃ！そのふわふわの被毛はまるでアニメから飛び出してきたようなキラキラ感があって、もうたまりません！耳のちょっとした動きや、しっぽのフリフリもマスターピース！しかも、おとなしい性格だけど、ツンデレ要素もあって、まさにツボを押さえてる！この猫ちゃんの存在はまるでアキバの至宝！最高にモエかわいいにゃんこだにゃ！',
                                    trimLines: 1,
                                    colorClickableText: Colors.pink,
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: 'もっと見る',
                                    trimExpandedText: '閉じる',
                                    moreStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://www.seikatubunka.metro.tokyo.lg.jp/bunka/bunka_jigyo/files/0000000985/Instagram_Glyph_Gradient.png',
                                width: 40,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'instagram',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'サンディエゴ',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    // ignore: sort_child_properties_last
                                    icon: const Icon(
                                      Icons.more_horiz,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 400,
                                initialPage: 0,
                                viewportFraction: 1,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) => setState(() {
                                  activeIndex2 = index;
                                }),
                              ),
                              itemCount: images.length,
                              itemBuilder: (context, index, realIndex) {
                                final path = images[index];
                                return InstagramPostItem(imageUrl: path);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.mode_comment_outlined,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.send_outlined,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  buildIndicator2(),
                                  const Spacer(
                                    flex: 4,
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.bookmark_border,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '「いいね!」704,899件',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  ReadMoreText(
                                    'にゃーん！このかわいらしい猫ちゃんはまさに「にゃんこ界のトップアイドル」だにゃ！そのふわふわの被毛はまるでアニメから飛び出してきたようなキラキラ感があって、もうたまりません！耳のちょっとした動きや、しっぽのフリフリもマスターピース！しかも、おとなしい性格だけど、ツンデレ要素もあって、まさにツボを押さえてる！この猫ちゃんの存在はまるでアキバの至宝！最高にモエかわいいにゃんこだにゃ！',
                                    trimLines: 1,
                                    colorClickableText: Colors.pink,
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: 'もっと見る',
                                    trimExpandedText: '閉じる',
                                    moreStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator1() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex1,
      count: images.length,
      //エフェクトはドキュメントを見た方がわかりやすい
      effect: const JumpingDotEffect(
          dotHeight: 20,
          dotWidth: 20,
          activeDotColor: Colors.blue,
          dotColor: Colors.black12),
    );
  }

  Widget buildIndicator2() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex2,
      count: images.length,
      //エフェクトはドキュメントを見た方がわかりやすい
      effect: const JumpingDotEffect(
          dotHeight: 20,
          dotWidth: 20,
          activeDotColor: Colors.blue,
          dotColor: Colors.black12),
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

//PR用