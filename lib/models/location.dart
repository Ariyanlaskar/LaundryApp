// import 'dart:js_util';

import 'package:flutter/material.dart';

class Location {
  final String address;
  final String state;
  final Color color;
  final String imgpath;

  Location({
    required this.address,
    required this.state,
    required this.color,
    required this.imgpath,
  });

  static List<Location> getLocations() {
    List<Location> locations = [];
    locations.add(Location(
        address: 'Colaba Causeway 08',
        state: 'Maharashtra',
        color: Colors.deepPurple,
        imgpath: 'assets/images/house1.png'));
    locations.add(Location(
        address: 'Bandra West',
        state: 'Maharashtra',
        color: Colors.orange.shade600,
        imgpath: 'assets/images/house2.png'));

    return locations;
  }
}
