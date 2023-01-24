import 'dart:ui';

import 'package:flutter/material.dart';

import '../common/assets.dart';
import '../common/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int activePage = 1;
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
        "https://www.dreamworks.com/storage/cms-uploads/puss-in-boots-the-last-wish-key-art2.jpg",
    "https://parade.com/.image/t_share/MTkwNTc4NzcxNjE5NjIwNzMy/disney-pixar.jpg",
  ];

  List<String> image = [
    "https://www.dreamworks.com/storage/cms-uploads/puss-in-boots-the-last-wish-key-art2.jpg",
    "https://parade.com/.image/t_share/MTkwNTc4NzcxNjE5NjIwNzMy/disney-pixar.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  int ourCurrentIndex = 0;
  Color containerColor = const Color(0xFF05113b);
  Color activeIndexColor = const Color(0xFF4ccdeb);
  Color inActiveIndexColor = const Color(0xFF1a496f);
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 9 * 10,
        // backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(Assets.profile),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: Strings.hello),
                            TextSpan(
                                text: Strings.arie,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                        child: Text(Strings.bookYour,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: const Icon(
                      Icons.notifications_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.99,
          width: double.infinity,
          color: containerColor,
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              height: 50,
              width: double.infinity,
              child: TextField(
                  cursorColor: Colors.white,
                  autofocus: false,
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                      color: Colors.white,
                      size: 32,
                    ),
                    suffixIcon: const Icon(
                      Icons.tune_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: Strings.searchMovie,
                    hintStyle: const TextStyle(
                        color: Colors.white, fontSize: 16, height: 1.8),
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                  controller: _searchController),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: Strings.now,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22)),
                        TextSpan(
                            text: Strings.showing,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 22)),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    Strings.seeMore,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.4,
              child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (context, pagePosition) {
                    bool active = pagePosition == activePage;
                    return slider(images, pagePosition, active);
                  }),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length, activePage)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: Strings.animation,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 22)),
                        TextSpan(
                            text: Strings.film,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 22)),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    Strings.seeMore,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = image[index];
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image.network(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ]);
                },
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: containerColor,
        onTap: (index) {
          ourCurrentIndex = index;
          setState(() {});
        },
        currentIndex: ourCurrentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ourCurrentIndex == 0
                  ? const Icon(
                      Icons.home,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
              label: ""),
          BottomNavigationBarItem(
              icon: ourCurrentIndex == 1
                  ? const Icon(
                      Icons.grid_goldenratio_rounded,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.grid_goldenratio_rounded,
                      color: Colors.grey,
                    ),
              label: ""),
          BottomNavigationBarItem(
              icon: ourCurrentIndex == 2
                  ? const Icon(
                      Icons.account_balance_wallet_sharp,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.account_balance_wallet_sharp,
                      color: Colors.grey,
                    ),
              label: ""),
          BottomNavigationBarItem(
              icon: ourCurrentIndex == 3
                  ? const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                    ),
              label: ""),
        ],
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 20,
        height: 16,
        decoration: BoxDecoration(
            color:
                currentIndex == index ? activeIndexColor : inActiveIndexColor,
            shape: BoxShape.circle),
      );
    });
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 10 : 20;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(images[pagePosition]), fit: BoxFit.fill)),
    );
  }
}
