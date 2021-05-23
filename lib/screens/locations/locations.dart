import 'package:flutter/material.dart';
import 'package:tourism_app/models/location.dart';
import 'package:tourism_app/app.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations.map((location) =>  GestureDetector(
            child: Text(location.name),
            onTap: () => _onLocationTap(context, location.id),
        )).toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID)
  {
    Navigator.pushNamed(context, LocationDetailRout, arguments: {'id':locationID});
  }
}
