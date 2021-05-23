import 'package:tourism_app/models/location_fact.dart';
class Location{
  final int id;
  String name;
  String imageParth;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imageParth, this.facts);


  static List<Location> fetchAll() {
    return [
      Location(1,'1Arashiyama Bamboo Grove', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2,'1Arashiyama Bamboo Grove 2', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(3,'1Arashiyama Bamboo Grove 3', 'assets/images/kiyomizu-dera.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }

  static Location? fetchByid(int locationID)
  {
    //fetch all the location iterate then when we find locations
    //with ID we want return them immediatly
    List<Location> locations = Location.fetchAll();
    for(var i=0; i<locations.length; i++)
    {
      if(locations[i].id == locationID)
      {
        return locations[i];
      }

    }
    return null;
  }

}