part of 'pages.dart';

class ListKCPage extends StatefulWidget {
  const ListKCPage({Key key}) : super(key: key);

  @override
  _ListKCPageState createState() => _ListKCPageState();
}

class _ListKCPageState extends State<ListKCPage> {
  List bank = [];
  List ori = [];
  TextEditingController textQuery = new TextEditingController();

  void loadData() async {
    String jsonStr = await rootBundle.loadString('assets/json/dataLoc.json');
    var json = jsonDecode(jsonStr);
    bank = json;
    ori = json;
    setState(() {});
  }

  void search(String query) {
    if (query.isEmpty) {
      bank = ori;
      setState(() {});
      return;
    }

    query = query.toLowerCase();
    print(query);
    List result = [];
    bank.forEach((p) {
      var placename = p["placename"].toString().toLowerCase();
      if (placename.contains(query)) {
        result.add(p);
      }
    });

    bank = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Kantor Cabang BNI'),
          backgroundColor: mainColor,
        ),
        body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                        controller: textQuery,
                        onChanged: search,
                        decoration: InputDecoration(
                            hintText: "Cari Bank KC",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: mainColor)),
                            prefixIcon: Icon(Icons.search, color: mainColor),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  textQuery.text = '';
                                  search(textQuery.text);
                                },
                                icon: Icon(Icons.clear, color: mainColor))))
                  ],
                ),
              ),
              _listView(bank)
            ]));
  }

  Widget _listView(bank) {
    return Expanded(
      child: ListView.builder(
          itemCount: bank.length,
          itemBuilder: (context, index) {
            var bankKC = bank[index];
            return Card(
                child: Padding(
              padding: const EdgeInsets.only(
                  top: 32, bottom: 32, left: 16, right: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 60,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                bankKC['placename'],
                                //'Note Title',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 60,
                            child: Text(
                              bankKC['address'],
                              //'Note Text',
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 12),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ]),
                  ]),
            ));
          }),
    );
  }
}
