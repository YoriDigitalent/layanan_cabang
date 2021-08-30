part of 'pages.dart';

class LayananPage extends StatefulWidget {
  final List<String> layanan = [
    "Pembukaan Rekening Baru",
    "Penggantian Kartu ATM",
    "Penggantian Buku Rekening",
  ];

  final Formulir formulir = new Formulir();

  @override
  _LayananPageState createState() => _LayananPageState();
}

class _LayananPageState extends State<LayananPage> {
  String _selectedLayanan = "Pembukaan Rekening Baru";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin + 10),
      child: ListView(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 56,
              margin: EdgeInsets.only(top: 20, bottom: 4),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back)),
            ),
            Text(
              "Ada yang Bisa Kami Bantu?",
              style: blackTextFont.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Silahkan pilih Layanan",
              style: blackTextFont.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              children: generateLayWidgets(context),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: mainColor,
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    widget.formulir.selectedLayanan = _selectedLayanan;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MapView(formulir: widget.formulir)));
                  }),
            ),
          ],
        ),
      ]),
    ));
  }

  List<Widget> generateLayWidgets(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 2 * defaultMargin - 24);

    return widget.layanan
        .map((e) => SelectableBox(
              e,
              width: width,
              isSelected: _selectedLayanan == e,
              onTap: () {
                setState(() {
                  _selectedLayanan = e;
                });
              },
            ))
        .toList();
  }
}
