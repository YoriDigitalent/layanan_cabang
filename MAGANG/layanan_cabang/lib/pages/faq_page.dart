part of 'pages.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            child: ListView(children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text("Frequently Asked Question",
                  style: orangeTextFont.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 15,
              ),
            ])));
  }
}
