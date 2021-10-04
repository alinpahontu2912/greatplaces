import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:greatplaces/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items => [..._items];

  addPlace(
    String title,
    File image,
  ) {
    final newPlace = Place(
        id: 'test',
        image: image,
        title: title,
        location: PlaceLocation(latitude: 0, longitude: 0, address: ''));
    _items.add(newPlace);
    notifyListeners();
  }
}
