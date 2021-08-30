part of 'pages.dart';

class FormPage extends StatefulWidget {
  final Formulir formulir;

  FormPage({this.formulir});

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  DateTime selectedDate = DateTime.now();
  // ignore: unused_field
  String _setDate;

  TextEditingController _noRekController = TextEditingController();
  TextEditingController _namaLengkapController = TextEditingController();
  TextEditingController _noNIKController = TextEditingController();
  TextEditingController _tempatLahirController = TextEditingController();
  TextEditingController _tanggalLahirController = TextEditingController();
  TextEditingController _alamatEmailController = TextEditingController();
  TextEditingController _noHPController = TextEditingController();
  TextEditingController _namaIbuKandungController = TextEditingController();
  TextEditingController _alamatTinggalController = TextEditingController();

  @override
  void dispose() {
    _noRekController.dispose();
    _namaLengkapController.dispose();
    _noNIKController.dispose();
    _tempatLahirController.dispose();
    _tanggalLahirController.dispose();
    _alamatEmailController.dispose();
    _noHPController.dispose();
    _namaIbuKandungController.dispose();
    _alamatTinggalController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    final formProvider = Provider.of<FormulirBloc>(context, listen: false);
    formProvider.loadForm(null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final formProvider = Provider.of<FormulirBloc>(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 40),
                  height: 50,
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
                          "Isi Formulir",
                          style: orangeTextFont.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "${widget.formulir.selectedLayanan}",
                  style: orangeTextFont.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    controller: _noRekController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: false),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Nomor Rekening",
                      hintText: "Nomor Rekening",
                    )),
                Text(
                  "Catatan: Jika Anda memilih layanan 'Pembukaan Rekening Baru', maka nomor rekening harap dilewati saja",
                  style: blackTextFont.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _namaLengkapController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Nama Lengkap",
                      hintText: "Nama Lengkap",
                    )),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _noNIKController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: false),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Nomor NIK",
                      hintText: "Nomor NIK",
                    )),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _tempatLahirController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Tempat Lahir",
                      hintText: "Tempat Lahir",
                    )),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: Container(
                    width: 400,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.white),
                    child: TextFormField(
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      enabled: false,
                      keyboardType: TextInputType.text,
                      controller: _tanggalLahirController,
                      onSaved: (String val) {
                        _setDate = val;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: "Tanggal Lahir",
                        hintText: "Tanggal Lahir",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _alamatEmailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Email",
                      hintText: "Email",
                    )),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _noHPController,
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: false),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Nomor Handphone",
                      hintText: "Nomor Handphone",
                    )),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _namaIbuKandungController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Nama Ibu Kandung",
                      hintText: "Nama Ibu Kandung",
                    )),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    controller: _alamatTinggalController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Alamat Tinggal",
                      hintText: "Alamat Tinggal",
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.only(top: 40, bottom: 15),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Pilih Tanggal dan Waktu",
                        style: whiteTextFont.copyWith(fontSize: 16),
                      ),
                      color: Colors.orange,
                      onPressed: () {
                        if (!(_namaLengkapController.text.trim() != "" &&
                            _noNIKController.text.trim() != "" &&
                            _tempatLahirController.text.trim() != "" &&
                            _tanggalLahirController.text.trim() != "" &&
                            _alamatEmailController.text.trim() != "" &&
                            _noHPController.text.trim() != "" &&
                            _namaIbuKandungController.text.trim() != "" &&
                            _alamatTinggalController.text.trim() != "")) {
                          Flushbar(
                            duration: Duration(milliseconds: 1500),
                            flushbarPosition: FlushbarPosition.TOP,
                            backgroundColor: Colors.redAccent,
                            message: "Ada form yang belum terisi",
                          )..show(context);
                        } else if (_noNIKController.text.length != 16) {
                          Flushbar(
                            duration: Duration(milliseconds: 1500),
                            flushbarPosition: FlushbarPosition.TOP,
                            backgroundColor: Colors.redAccent,
                            message: "NIK wajib berisi 16 karakter",
                          )..show(context);
                        } else if (_noHPController.text.length < 10) {
                          Flushbar(
                            duration: Duration(milliseconds: 1500),
                            flushbarPosition: FlushbarPosition.TOP,
                            backgroundColor: Colors.redAccent,
                            message: "Jumlah digit nomor HP tidak sesuai",
                          )..show(context);
                        } else if (!EmailValidator.validate(
                            _alamatEmailController.text)) {
                          Flushbar(
                            duration: Duration(milliseconds: 1500),
                            flushbarPosition: FlushbarPosition.TOP,
                            backgroundColor: Colors.redAccent,
                            message: "Alamat email tidak sesuai format",
                          )..show(context);
                        } else {
                          widget.formulir.noRek = _noRekController.text;
                          widget.formulir.namaLengkap =
                              _namaLengkapController.text;
                          widget.formulir.noNIK = _noNIKController.text;
                          widget.formulir.tempatLahir =
                              _tempatLahirController.text;
                          widget.formulir.tanggalLahir =
                              _tanggalLahirController.text;
                          widget.formulir.noHP = _noHPController.text;
                          widget.formulir.alamatEmail =
                              _alamatEmailController.text;
                          widget.formulir.namaIbuKandung =
                              _namaIbuKandungController.text;
                          widget.formulir.alamatTinggal =
                              _alamatTinggalController.text;

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DateTimePage(formulir: widget.formulir)));
                        }
                      }),
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1945),
        lastDate: DateTime(2030));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _tanggalLahirController.text = DateFormat.yMd().format(selectedDate);
      });
  }
}
