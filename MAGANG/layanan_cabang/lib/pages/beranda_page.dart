part of 'pages.dart';

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //note: HEADER
        Container(
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            padding: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 30),
            child: Center(
              child: Text(
                'Layanan Cabang BNI',
                style: whiteTextFont.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
            )),
        SizedBox(
          height: 25,
        ),
        //note: TEXT
        Container(
          margin: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 12),
          child: Text(
            "Ada yang bisa Kami bantu?",
            style: blackTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        //note: TOMBOL
        SizedBox(
          height: 30,
        ),
        //note: TOMBOL LAYANAN PAGE
        Container(
          margin: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 12),
          child: Column(children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LayananPage(),
                  ),
                );
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Pilih Layanan",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (rectangle) {
                      return LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.black.withOpacity(0.1),
                            Colors.transparent
                          ]).createShader(Rect.fromLTRB(0, 0, 77.5, 80));
                    },
                    blendMode: BlendMode.dstIn,
                    child: SizedBox(
                      height: 80,
                      width: 77.5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/reflection2.png")),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      shaderCallback: (rectangle) {
                        return LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.transparent
                            ]).createShader(Rect.fromLTRB(0, 0, 96, 45));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SizedBox(
                        height: 45,
                        width: 96,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/reflection1.png")),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      shaderCallback: (rectangle) {
                        return LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.transparent
                            ]).createShader(Rect.fromLTRB(0, 0, 53, 25));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SizedBox(
                        height: 25,
                        width: 53,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/reflection1.png")),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //note: TOMBOL LIST KC
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ListKC()));
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Kantor Cabang BNI",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (rectangle) {
                      return LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.black.withOpacity(0.1),
                            Colors.transparent
                          ]).createShader(Rect.fromLTRB(0, 0, 77.5, 80));
                    },
                    blendMode: BlendMode.dstIn,
                    child: SizedBox(
                      height: 80,
                      width: 77.5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/reflection2.png")),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      shaderCallback: (rectangle) {
                        return LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.transparent
                            ]).createShader(Rect.fromLTRB(0, 0, 96, 45));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SizedBox(
                        height: 45,
                        width: 96,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/reflection1.png")),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      shaderCallback: (rectangle) {
                        return LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.transparent
                            ]).createShader(Rect.fromLTRB(0, 0, 53, 25));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SizedBox(
                        height: 25,
                        width: 53,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/reflection1.png")),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //note: TOMBOL FAQ
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FAQ()));
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "FAQ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (rectangle) {
                      return LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Colors.black.withOpacity(0.1),
                            Colors.transparent
                          ]).createShader(Rect.fromLTRB(0, 0, 77.5, 80));
                    },
                    blendMode: BlendMode.dstIn,
                    child: SizedBox(
                      height: 80,
                      width: 77.5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          child: Image.asset("assets/reflection2.png")),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      shaderCallback: (rectangle) {
                        return LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.transparent
                            ]).createShader(Rect.fromLTRB(0, 0, 96, 45));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SizedBox(
                        height: 45,
                        width: 96,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/reflection1.png")),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      shaderCallback: (rectangle) {
                        return LinearGradient(
                            end: Alignment.centerRight,
                            begin: Alignment.centerLeft,
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.transparent
                            ]).createShader(Rect.fromLTRB(0, 0, 53, 25));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SizedBox(
                        height: 25,
                        width: 53,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/reflection1.png")),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
