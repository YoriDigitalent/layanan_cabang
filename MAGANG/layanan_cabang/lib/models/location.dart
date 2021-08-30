part of 'models.dart';

class Locations {
  final double lat;
  final double lng;

  Locations({this.lat, this.lng});

  factory Locations.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Locations(lat: parsedJson['lat'], lng: parsedJson['lng']);
  }
}
