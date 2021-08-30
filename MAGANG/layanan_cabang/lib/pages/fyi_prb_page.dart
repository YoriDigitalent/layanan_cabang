part of 'pages.dart';

class FyiPRBPage extends StatefulWidget {
  final Formulir formulir;

  FyiPRBPage({this.formulir});
  @override
  _FyiPRBPageState createState() => _FyiPRBPageState();
}

class _FyiPRBPageState extends State<FyiPRBPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 80,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back, color: mainColor),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Pemberitahuan",
                      style: orangeTextFont.copyWith(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "${widget.formulir.namaLengkap},",
              style: orangeTextFont.copyWith(fontSize: 18),
            ),
            Text(
              "Anda memilih layanan \n${widget.formulir.selectedLayanan}",
              style: orangeTextFont.copyWith(fontSize: 18),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Adapun yang harus Anda bawa:",
              style: orangeTextFont.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "1. Kartu Tanda Penduduk (KTP) Asli",
              style: orangeTextFont.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "2. Uang Setoran Awal Tabungan minimal Rp 100.000,-",
              style: orangeTextFont.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(bottom: 20),
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: mainColor,
                  elevation: 0,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            KonfirmasiPage(formulir: widget.formulir)));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
