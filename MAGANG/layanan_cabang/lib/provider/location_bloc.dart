part of 'providers.dart';

class LocationBloc with ChangeNotifier {
  final geoLocatorService = GeolocatorService();
  final placesService = PlaceService();
  final markerService = MarkerService();

  //Variables
  Position currentLocation;
  List<PlaceSearch> searchResults;
  StreamController<Place> selectedLocation =
      StreamController<Place>.broadcast();
  StreamController<LatLngBounds> bounds =
      StreamController<LatLngBounds>.broadcast();
  Place selectedLocationStatic;
  String placeType;
  String placeId;
  List<Place> placeResults;
  // ignore: deprecated_member_use
  List<Marker> markers = List<Marker>();
  Set<Polyline> _polyLines = {};
  Set<Polyline> get polyLines => _polyLines;

  LocationBloc() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geoLocatorService.getCurrentLocation();
    selectedLocationStatic = Place(
      name: null,
      geometry: Geometry(
        location: Locations(
            lat: currentLocation.latitude, lng: currentLocation.longitude),
      ),
    );
    notifyListeners();
  }

  searchPlaces(String searchTerm, double lat, double lng) async {
    searchResults = await placesService.getAutocomplete(
        searchTerm, currentLocation.latitude, currentLocation.longitude);

    notifyListeners();
  }

  setSelectedLocation(String placeId) async {
    var sLocation = await placesService.getPlace(placeId);
    selectedLocation.add(sLocation);
    selectedLocationStatic = sLocation;
    searchResults = null;

    markers = [];
    if (Location != null) {
      var newMarker =
          markerService.createMarkerFromPlace(selectedLocationStatic, false);
      markers.add(newMarker);
    }

    var locationMarker = markerService.createMarkerFromPlace(sLocation, true);
    markers.add(locationMarker);

    var _bounds = markerService.bounds(Set<Marker>.of(markers));
    bounds.add(_bounds);

    notifyListeners();
  }

  clearSelectedLocation() {
    selectedLocation.add(null);
    selectedLocationStatic = null;
    searchResults = null;
    placeType = null;

    notifyListeners();
  }

  @override
  void dispose() {
    selectedLocation.close();
    bounds.close();
    super.dispose();
  }
}
