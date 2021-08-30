part of 'widget.dart';

// ignore: must_be_immutable
class TextFieldMap extends StatefulWidget {
  TextEditingController controller;
  FocusNode focusNode;
  String label;
  String hint;
  double width;
  Icon prefixIcon;
  Widget suffixIcon;
  Function(String) locationCallback;

  TextFieldMap(
      {this.controller,
      this.focusNode,
      this.label,
      this.hint,
      this.width,
      this.prefixIcon,
      this.suffixIcon,
      this.locationCallback});

  @override
  _TextFieldMapState createState() => _TextFieldMapState();
}

class _TextFieldMapState extends State<TextFieldMap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      child: TextField(
        onChanged: (value) {
          widget.locationCallback(value);
        },
        controller: widget.controller,
        focusNode: widget.focusNode,
        decoration: new InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          labelText: widget.label,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.blue.shade300,
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.all(15),
          hintText: widget.hint,
        ),
      ),
    );
  }
}
