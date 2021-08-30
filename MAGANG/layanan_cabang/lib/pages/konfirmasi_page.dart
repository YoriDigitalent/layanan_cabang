part of 'pages.dart';

class KonfirmasiPage extends StatefulWidget {
  final Formulir formulir;

  KonfirmasiPage({Key key, this.formulir}) : super(key: key);

  @override
  _KonfirmasiPageState createState() => _KonfirmasiPageState();
}

class _KonfirmasiPageState extends State<KonfirmasiPage> {
  CollectionReference forms = FirebaseFirestore.instance.collection('forms');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
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
                    "Konfirmasi",
                    style: orangeTextFont.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("${widget.formulir.selectedLayanan}",
                  style: orangeTextFont.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Kantor Cabang:",
                      style: greyTextFont.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Text(
                        "${widget.formulir.place}",
                        textAlign: TextAlign.center,
                        style: whiteNumberFont.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tanggal",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(
                      "${widget.formulir.selectedDate}",
                      textAlign: TextAlign.end,
                      style: whiteNumberFont.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Pukul",
                        style: greyTextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    Text(
                      "${widget.formulir.selectedTimes}:00",
                      textAlign: TextAlign.end,
                      style: whiteNumberFont.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 20, horizontal: defaultMargin),
                  child: Divider(
                    color: Color(0xFFE4E4E4),
                    thickness: 2,
                  )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Nama Lengkap",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(
                  widget.formulir.namaLengkap,
                  textAlign: TextAlign.end,
                  style: whiteNumberFont.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("No NIK",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(
                  widget.formulir.noNIK,
                  textAlign: TextAlign.end,
                  style: whiteNumberFont.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("TTL",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Text(
                    "${widget.formulir.tempatLahir}, ${widget.formulir.tanggalLahir}",
                    textAlign: TextAlign.end,
                    style: whiteNumberFont.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Email",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Text(
                    widget.formulir.alamatEmail,
                    textAlign: TextAlign.end,
                    style: whiteNumberFont.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("No HP",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Text(
                    widget.formulir.noHP,
                    textAlign: TextAlign.end,
                    style: whiteNumberFont.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Nama Ibu Kandung",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(
                  widget.formulir.namaIbuKandung,
                  textAlign: TextAlign.end,
                  style: whiteNumberFont.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Alamat Tinggal",
                    style: greyTextFont.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(
                  widget.formulir.alamatTinggal,
                  textAlign: TextAlign.end,
                  style: whiteNumberFont.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 300,
              margin: EdgeInsets.only(bottom: 20),
              // ignore: deprecated_member_use
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Konfirmasi Sekarang!",
                  style: whiteTextFont.copyWith(fontSize: 16),
                ),
                color: Colors.orange,
                onPressed: () {
                  addForm();

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SuksesPage()));
                },
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }

  Future<void> addForm() {
    // Call the form's CollectionReference to add a new form
    return forms
        .add({
          'selectedLayanan': widget.formulir.selectedLayanan,
          'place': widget.formulir.place,
          'selectedDate': widget.formulir.selectedDate,
          'selectedTimes': widget.formulir.selectedTimes,
          'noRek': widget.formulir.noRek,
          'namaLengkap': widget.formulir.namaLengkap,
          'noNIK': widget.formulir.noNIK,
          'tempatLahir': widget.formulir.tempatLahir,
          'tanggalLahir': widget.formulir.tanggalLahir,
          'alamatEmail': widget.formulir.alamatEmail,
          'noHP': widget.formulir.noHP,
          'namaIbuKandung': widget.formulir.namaIbuKandung,
          'alamatTinggal': widget.formulir.alamatTinggal,
        })
        .then((value) => print("Form Added"))
        .catchError((error) => print("Failed to add form: $error"));
  }
}
