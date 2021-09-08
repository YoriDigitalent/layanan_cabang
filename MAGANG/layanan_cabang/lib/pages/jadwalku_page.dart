part of 'pages.dart';

class JadwalkuPage extends StatelessWidget {
  final Stream<QuerySnapshot> _formsStream =
      FirebaseFirestore.instance.collection('forms').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: _formsStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return new ListView(
              children: snapshot.data.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data();
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 32, bottom: 32, left: 16, right: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data['namaLengkap'],
                              style: blackTextFont.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Row(children: <Widget>[
                            Text("Tanggal:"),
                            SizedBox(width: 3),
                            Text(data['selectedDate']),
                            SizedBox(width: 15),
                            Text("Pukul:"),
                            SizedBox(width: 3),
                            Text(data['selectedTimes'].toString()),
                            Text(":00"),
                          ]),
                          SizedBox(height: 5),
                          Text(data['place']),
                          SizedBox(height: 10),
                          Text(data['selectedLayanan']),
                        ]),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
