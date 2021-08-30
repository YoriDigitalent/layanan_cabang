part of 'models.dart';

class Place {
  Geometry geometry;
  String name;
  String vicinity;
  String address;

  Place({this.geometry, this.name, this.vicinity, this.address});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
        geometry: Geometry.fromJson(json['geometry']),
        name: json['name'],
        vicinity: json['vicinity'],
        address: json['formatted_address']);
  }
}
