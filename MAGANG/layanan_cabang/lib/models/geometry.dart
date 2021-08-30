part of 'models.dart';

class Geometry {
  final Locations location;

  Geometry({this.location});

  Geometry.fromJson(Map<dynamic, dynamic> parsedJson)
      : location = Locations.fromJson(parsedJson['location']);
}
