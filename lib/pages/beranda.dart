import 'package:flutter/material.dart';

import '../style/facebook_colors.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> with TickerProviderStateMixin {
  Widget _buildChipsList() {
    return Container(
      color: cardColor,
      child: Container(
        height: 60,
        color: const Color(0xFF3E4041),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/img/reel-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Reel',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/img/video-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Group',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/img/grupo-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Living room',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Chip(
                backgroundColor: const Color(0xFF3E4041),
                label: Row(
                  children: [
                    Image.asset(
                      'assets/img/live-icon.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Live',
                      style: TextStyle(color: textColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: cardColor,
        elevation: 0,
        title: Image.asset('assets/img/facebook.png'),
        centerTitle: false,
        actions: [
          IconButton(
            color: reelColor,
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: reelColor,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            color: reelColor,
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: reelColor,
              child: Icon(
                Icons.message,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: cardColor,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            child: Image.asset('assets/img/avatar.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text(
                            'What are you thinking?',
                            style: TextStyle(color: customWhite),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/img/image-icon.png',
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildChipsList(),
          const SizedBox(
            height: 8,
          ),
          _buildStoriesSection(),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/img/avatar.png'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Carlos Velasques',
                                style: TextStyle(
                                  color: customWhite,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '7 min',
                                style: TextStyle(
                                  color: customWhite,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.more_horiz,
                            color: customWhite,
                          ),
                          Icon(
                            Icons.close,
                            color: customWhite,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'This year has finally been a great learning experience, we are all grateful for this. But perseverance is what gives way to what is truly worth. Thank you 2024.',
                    style: TextStyle(color: customWhite),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ..._footer(false),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset('assets/img/avatar.png'),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Carlos Velasques',
                                      style: TextStyle(
                                        color: customWhite,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '7 min',
                                      style: TextStyle(
                                        color: customWhite,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.more_horiz,
                                  color: customWhite,
                                ),
                                Icon(
                                  Icons.close,
                                  color: customWhite,
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'This year has finally been a great learning experience, we are all grateful for this. But perseverance is what gives way to what is truly worth. Thank you 2024. ',
                          style: TextStyle(color: customWhite),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset('assets/img/post1.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  ..._footer(true),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _footer(bool hasPadding) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: hasPadding ? 16 : 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Positioned(
                        left: 0, child: Image.asset('assets/img/like.png')),
                    Positioned(
                        left: 15, child: Image.asset('assets/img/love.png')),
                    Image.asset(
                      'assets/img/like.png',
                    ),
                  ],
                ),
                const Text(
                  '568',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const Text(
              '589 comments',
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 4,
      ),
      Divider(
        color: textColor.withOpacity(0.5),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img/like-icon.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'I like',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img/comment-icon.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Comment',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img/share-icon.png'),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'Share',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ],
      )
    ];
  }

  Widget _buildStoriesSection() {
    return Container(
      color: cardColor,
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TabBar(
                controller: TabController(length: 3, vsync: this),
                tabs: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Stories',
                      style: TextStyle(color: mainColor),
                    ),
                  ),
                  Text('Reels'),
                  Text('Rooms'),
                ]),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 210,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Container(
                        color: scaffoldColor,
                        child: Image.asset('assets/img/story1.png'),
                      ),
                      const Positioned(
                        left: 30,
                        top: 105,
                        child: CircleAvatar(
                          child: Icon(Icons.add),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 20,
                        child: SizedBox(
                          width: 50,
                          child: Text(
                            'Roberto Velasques',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: customWhite,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/img/story2.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/img/avatar2.png',
                            width: 100,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 12,
                        child: Text(
                          'Carlos Velasques',
                          style: TextStyle(
                            color: customWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/img/story3.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/img/avatar3.png',
                            width: 100,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 12,
                        child: Text(
                          'Roberto Velasques',
                          style: TextStyle(
                            color: customWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/img/story4.png'),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: CircleAvatar(
                          child: Image.asset(
                            'assets/img/avatar3.png',
                            width: 100,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20,
                        left: 12,
                        child: Text(
                          'Roberto Velasques',
                          style: TextStyle(
                            color: customWhite,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
