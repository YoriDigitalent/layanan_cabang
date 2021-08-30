part of 'pages.dart';

class SuksesPage extends StatelessWidget {
  final Formulir formulir;

  SuksesPage({Key key, this.formulir}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          margin: EdgeInsets.only(bottom: 70),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/sukses.png"))),
        ),
        Text(
          "Selamat!",
          style: blackTextFont.copyWith(fontSize: 20),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          ("Layanan yang Anda pilih \n telah Sukses dijadwalkan"),
          textAlign: TextAlign.center,
          style:
              blackTextFont.copyWith(fontSize: 16, fontWeight: FontWeight.w300),
        ),
        Container(
          height: 45,
          width: 250,
          margin: EdgeInsets.only(top: 70, bottom: 20),
          // ignore: deprecated_member_use
          child: RaisedButton(
              elevation: 0,
              color: mainColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                "Lihat Jadwalku",
                style: whiteTextFont.copyWith(fontSize: 16),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MainPage(bottomNavBarIndex: 1)));
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Kembali ke beranda?  ",
              style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Text(
                "  Beranda",
                style: orangeTextFont,
              ),
            )
          ],
        )
      ],
    ));
  }
}
