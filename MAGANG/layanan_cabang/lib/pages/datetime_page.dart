part of 'pages.dart';

class DateTimePage extends StatefulWidget {
  final Formulir formulir;

  DateTimePage({Key key, this.formulir}) : super(key: key);

  @override
  _DateTimePageState createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  double _height;
  double _width;

  // ignore: unused_field
  String _setTime, _setDate;

  String dateTime;

  DateTime selectedDate = DateTime.now();

  int selectedTimes;
  bool isValid = false;

  TextEditingController _dateController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2020),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
      });
  }

  @override
  void initState() {
    _dateController.text = DateFormat.yMd().format(DateTime.now());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    dateTime = DateFormat.yMd().format(DateTime.now());
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: _width,
        height: _height,
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
                      "Pilih\nTanggal dan Waktu",
                      style: orangeTextFont.copyWith(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "${widget.formulir.selectedLayanan}",
                style: orangeTextFont.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // PILIH TANGGAL
            Column(
              children: <Widget>[
                Text(
                  'Pilih Tanngal',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                InkWell(
                  onTap: () {
                    _selectDate(context);
                  },
                  child: Container(
                    width: _width / 1.7,
                    height: _height / 9,
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.white),
                    child: TextFormField(
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                      enabled: false,
                      keyboardType: TextInputType.text,
                      controller: _dateController,
                      onSaved: (String val) {
                        _setDate = val;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // labelText: 'Time',
                          contentPadding: EdgeInsets.only(top: 0.0)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            // PILIH WAKTU
            Column(
              children: <Widget>[
                Text(
                  'Pilih Waktu',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 20,
                ),
                generateTimeHourTable(),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: (widget.formulir.selectedLayanan ==
                            "Pembukaan Rekening Baru")
                        ? Text(
                            "Estimasi waktu \n ${widget.formulir.selectedLayanan} :\n 30 Menit",
                            style: orangeTextFont.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          )
                        : Text(
                            "Estimasi waktu \n ${widget.formulir.selectedLayanan} :\n 45 Menit",
                            style: orangeTextFont.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          )),
                SizedBox(
                  height: 80,
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
                        widget.formulir.selectedDate = _dateController.text;
                        widget.formulir.selectedTimes = selectedTimes;

                        if (widget.formulir.selectedLayanan ==
                            "Pembukaan Rekening Baru") {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FyiPRBPage(
                                    formulir: widget.formulir,
                                  )));
                        } else if (widget.formulir.selectedLayanan ==
                            "Penggantian Kartu ATM") {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FyiPKAPage(
                                    formulir: widget.formulir,
                                  )));
                        } else if (widget.formulir.selectedLayanan ==
                            "Penggantian Buku Rekening") {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FyiPBRPage(
                                    formulir: widget.formulir,
                                  )));
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column generateTimeHourTable() {
    List<int> schedule = List.generate(7, (index) => 09 + index * 1);

    List<Widget> widgets = [];

    widgets.add(Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        itemCount: schedule.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => Container(
          margin: EdgeInsets.only(
              left: (index == 0) ? defaultMargin : 0,
              right: (index < schedule.length - 1) ? 16 : defaultMargin),
          child: SelectableBox(
            "${schedule[index]}:00",
            height: 50,
            isSelected: selectedTimes == schedule[index],
            isEnabled: schedule[index] > DateTime.now().hour ||
                selectedDate.day != DateTime.now().day,
            onTap: () {
              setState(() {
                selectedTimes = schedule[index];
                isValid = true;
              });
            },
          ),
        ),
      ),
    ));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}
