part of 'services.dart';

class PlaceService {
  Future<List<PlaceSearch>> getAutocomplete(
      String search, double lat, double lng) async {
    var url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$search&types=establishment&location=$lat,$lng&radius=500&components=country:id&key=$apiKey';
    var response = await http.get(url);
    var predictions = json.decode(response.body);
    var jsonResults = predictions['predictions'] as List;
    return jsonResults.map((place) => PlaceSearch.fromJson(place)).toList();
  }

  Future<Place> getPlace(String placeId) async {
    var url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey';
    var response = await http.get(url);
    var result = json.decode(response.body);
    var jsonResult = result['result'] as Map<String, dynamic>;
    return Place.fromJson(jsonResult);
  }
}
