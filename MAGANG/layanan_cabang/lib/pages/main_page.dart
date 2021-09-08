part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int bottomNavBarIndex;

  const MainPage({Key key, this.bottomNavBarIndex = 0}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavBarIndex;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white54,
            ),
            SafeArea(
                child: Container(
              color: Color(0xFFF6F7F9),
            )),
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  bottomNavBarIndex = index;
                });
              },
              children: <Widget>[
                BerandaPage(),
                JadwalkuPage(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: BottomNavigationBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      selectedItemColor: mainColor,
                      unselectedItemColor: Colors.grey,
                      currentIndex: bottomNavBarIndex,
                      onTap: (index) {
                        setState(() {
                          bottomNavBarIndex = index;
                          pageController.jumpToPage(index);
                        });
                      },
                      items: [
                        BottomNavigationBarItem(
                            // ignore: deprecated_member_use
                            title: Text("Beranda",
                                style: GoogleFonts.raleway(
                                    fontSize: 13, fontWeight: FontWeight.w600)),
                            icon: Container(
                              margin: EdgeInsets.only(bottom: 6),
                              height: 20,
                              child: Image.asset((bottomNavBarIndex == 0)
                                  ? "assets/homeOrange.png"
                                  : "assets/homeGrey.png"),
                            )),
                        BottomNavigationBarItem(
                            // ignore: deprecated_member_use
                            title: Text("Jadwal",
                                style: GoogleFonts.raleway(
                                    fontSize: 13, fontWeight: FontWeight.w600)),
                            icon: Container(
                              margin: EdgeInsets.only(bottom: 6),
                              height: 20,
                              child: Image.asset((bottomNavBarIndex == 1)
                                  ? "assets/informationOrange.png"
                                  : "assets/informationGray.png"),
                            ))
                      ]),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
