part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Selamat Datang!",
                  style: whiteTextFont.copyWith(fontSize: 24),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 15),
                child: Text(
                  "Aplikasi ini merupakan penjadwalan ketika Anda ingin berkunjung ke kantor cabang untuk diberikan pelayanan",
                  style: whiteTextFont.copyWith(
                      fontSize: 13, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 250,
                height: 45,
                margin: EdgeInsets.only(top: 70, bottom: 19),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: Text(
                      "Mulai",
                      style: blackTextFont.copyWith(fontSize: 16),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
