import 'package:flutter/material.dart';
import 'package:greatplaces/providers/great_places.dart';
import 'package:greatplaces/screens/add_place_screen.dart';
import 'package:greatplaces/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor:  Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
        },
      ),
    );
  }
}

