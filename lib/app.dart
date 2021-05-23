import 'package:flutter/material.dart';

import 'package:tourism_app/style.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail.dart';

const LocationsRoute = "/";
const LocationDetailRout = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: _theme(),
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route<dynamic>?_onGenerateRoute(RouteSettings settings) {
    if(settings.name == LocationDetailRout) {
      final arguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(builder: (_) => LocationDetail(arguments['id']));
    }
    return null;
  }


  // RouteFactory _routes() {
  //   return (settings) {
  //     print('this is log $settings.arguments');
  //     //final Map<String, dynamic> arguments = settings.arguments;
  //     final arguments = settings.arguments as Map<String, dynamic>;
  //
  //     Widget screen;
  //     switch (settings.name) {
  //       case LocationsRoute:
  //         screen = Locations();
  //         break;
  //       case LocationDetailRout:
  //         screen = LocationDetail(arguments['id']);
  //         break;
  //       default:
  //         return null;
  //     }
  //     return MaterialPageRoute(builder: (BuildContext context)=> screen);
  //   };
  // }

ThemeData _theme(){
    return ThemeData(
      appBarTheme: AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle)),
      textTheme: TextTheme(
        title: TitleTextStyle,
        body1: Body1TextStyle,
      ),
    );
}
}
