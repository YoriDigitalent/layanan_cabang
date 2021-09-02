part of 'pages.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  String _faq1;
  String _faq2;
  String _faq3;
  List _answer1 = [
    "Aplikasi ini ditujukan untuk",
    "mempermudah nasabah dalam",
    "melakukan layanan di",
    "kantor cabang BNI."
  ];
  List _answer2 = [
    "Pembukaan Rekening Baru",
    "Penggantian Kartu ATM",
    "Penggantian Buku Rekening"
  ];
  List _answer3 = [
    "Ikuti langkah-langkah pada",
    "aplikasi secara benar dan",
    "Isi secara teliti"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            child: ListView(children: <Widget>[
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
                        "Frequently Asked\nQuestion",
                        style: orangeTextFont.copyWith(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 80,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: mainColor)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        "Apa itu aplikasi\nBNI Layanan Cabang?",
                        style: blackTextFont.copyWith(fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                      value: _faq1,
                      items: _answer1.map((value) {
                        return DropdownMenuItem(
                          child: Text(value,
                              style: blackTextFont.copyWith(fontSize: 12),
                              textAlign: TextAlign.left),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 80,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: mainColor)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        "Apa saja layanan yang\nterdapat pada aplikasi?",
                        style: blackTextFont.copyWith(fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                      value: _faq2,
                      items: _answer2.map((value) {
                        return DropdownMenuItem(
                          child: Text(value,
                              style: blackTextFont.copyWith(fontSize: 12)),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 80,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: mainColor)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        "Bagaimana menggunakan\naplikasi ini?",
                        style: blackTextFont.copyWith(fontSize: 14),
                        textAlign: TextAlign.left,
                      ),
                      value: _faq3,
                      items: _answer3.map((value) {
                        return DropdownMenuItem(
                          child: Text(value,
                              style: blackTextFont.copyWith(fontSize: 12)),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
            ])));
  }
}
