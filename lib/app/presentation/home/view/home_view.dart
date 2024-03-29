import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustumBottomNavigatiobarWidget(),
      body: LayoutBuilder(builder: (context, constraints) {
        return const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchLive(),
            GameLiveWidget(),
            GameCategoriesWidget(),
            TittleGameWidget(),
            TopLiveWidget(),
          ],
        );
      }),
    );
  }
}

class TittleGameWidget extends StatelessWidget {
  const TittleGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Top Streamers Live',
            style: TextStyle(
              color: Color(0xffF4F3FC),
              fontSize: 20,
              height: 1.2,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            'View all',
            style: TextStyle(
              color: Color(0xffF7B84B),
              fontSize: 15,
              height: 1.2,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              letterSpacing: 0.08,
            ),
          ),
        ],
      ),
    );
  }
}

class CustumBottomNavigatiobarWidget extends StatelessWidget {
  const CustumBottomNavigatiobarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 1,
        unselectedItemColor: const Color(0xff7E7E7E),
        fixedColor: const Color(0xffF7B84B),
        backgroundColor: const Color(0xff000000),
        items: const [
          BottomNavigationBarItem(
            label: 'Following',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            label: 'Browse',
            icon: Icon(Icons.copy),
          ),
        ]);
  }
}

class GameLiveWidget extends StatelessWidget {
  const GameLiveWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 32,
      ),
      child: SizedBox(
        height: 160,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 17,
                  right: 17,
                ),
                child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 270,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff8B92DF),
                    ),
                    child: Stack(children: [
                      Positioned.fill(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.asset(
                            "assets/image/fortnite.jpeg",
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 15,
                        child: Row(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffEB5757),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  bottom: 10,
                                  top: 10,
                                  left: 10,
                                  right: 9,
                                ),
                                child: Text(
                                  'LIVE',
                                  style: TextStyle(
                                    color: Color(0xffF2F2F2),
                                    fontSize: 12,
                                    height: 1,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 0.04,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xF2333333),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                bottom: 9,
                                top: 9,
                                left: 10,
                                right: 10,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Color(0xffE0E0E0),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '8.1K',
                                    style: TextStyle(
                                      color: Color(0xffF2F2F2),
                                      fontSize: 12,
                                      height: 1,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ])),
              );
            }),
      ),
    );
  }
}

class GameCategoriesWidget extends StatelessWidget {
  const GameCategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 45,
      ),
      child: SizedBox(
        height: 90,
        child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        color: Color.fromARGB(66, 250, 155, 30),
                      ),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'assets/svg/categories6.svg',
                          height: 32,
                          width: 32,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 08,
                    ),
                    const Text(
                      'Overwatch',
                      style: TextStyle(
                        color: Color(0xffF4F3FC),
                        fontSize: 10,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}

class TopLiveWidget extends StatelessWidget {
  const TopLiveWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 17,
                right: 17,
              ),
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: 270,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff8B92DF),
                  ),
                  child: Stack(children: [
                    Positioned.fill(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(
                          "assets/image/apex.jpeg",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 15,
                      child: Row(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffEB5757),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                top: 10,
                                left: 10,
                                right: 9,
                              ),
                              child: Text(
                                'LIVE',
                                style: TextStyle(
                                  color: Color(0xffF2F2F2),
                                  fontSize: 12,
                                  height: 1,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: 0.04,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xF2333333),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              bottom: 9,
                              top: 9,
                              left: 10,
                              right: 10,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Color(0xffE0E0E0),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '8.1K',
                                  style: TextStyle(
                                    color: Color(0xffF2F2F2),
                                    fontSize: 12,
                                    height: 1,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ])),
            );
          }),
    );
  }
}

class SearchLive extends StatelessWidget {
  const SearchLive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 60,
            bottom: 32,
          ),
          child: Text(
            'Watch Live',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xffF4F3FC),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 50,
            top: 0,
            bottom: 32,
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xff828282),
              ),
              hintText: 'Search live channels or streamers',
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder custumuOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffFFFFFF),
        //this has no effect
      ),
      borderRadius: BorderRadius.circular(16.0),
    );
  }
}
