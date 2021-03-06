// AIzaSyC1p8pqMC6cdgz845HJkZy-e_8Yc9oY3LA
// ignore: unused_import
//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:WINWIN/drawsetting.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Google Maps Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MapSample(),
//     );
//   }
// }

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  // ignore: unused_field
  BitmapDescriptor _markerIcon;
  @override
  Future _createMarkerImageFromAsset(BuildContext context) async {
    if (_markerIcon == null) {
      ImageConfiguration configuration = ImageConfiguration();
      BitmapDescriptor bmpd = await BitmapDescriptor.fromAssetImage(
          configuration, 'assets/images/ic_airport.png');
      setState(() {
        _markerIcon = bmpd;
      });
    }
  }

  LatLng currentLacation = LatLng(13.7832245, 100.558656);
  // ignore: unused_field
  GoogleMapController _mapController;
  @override
  Widget build(BuildContext context) {
    _createMarkerImageFromAsset(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: SettingBar(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: <Widget>[
                GoogleMap(
                  markers: {
                    Marker(
                        markerId: MarkerId("1"),
                        // icon: _markerIcon,
                        position: LatLng(13.7790104, 100.5570799),
                        infoWindow: InfoWindow(
                            title: "วินมอเตอร์ไซค์",
                            snippet: "หน้าทางเข้ามหาลัยจักรพงษ์")),
                  },

                  initialCameraPosition:
                      CameraPosition(target: currentLacation, zoom: 14.8),
                  myLocationEnabled: true,
                  // myLocationButtonEnabled: false,
                  // zoomControlsEnabled: false,
                  //
                ),
                // Positioned(
                //   top: 40,
                //   left: 10,
                //   child: Container(
                //     child: new IconButton(
                //         icon: new Icon(Icons.arrow_back),
                //         onPressed: () {
                //           // Navigator.push(
                //           //     context,
                //           //     MaterialPageRoute(
                //           //         builder: (context) => myhome()));
                //         }),

                //     // child: Icon(
                //     //   Icons.arrow_back,
                //     //   size: 28,
                //   ),
                // ),

                Positioned(
                    bottom: 10,
                    right: 10,
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.gps_fixed,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
              // eiei
              //แถบด้านล่าง
              child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 17, right: 15, left: 15),
                //decoration: BoxDecoration(color: Colors.red[300]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // RaisedButton(
                    //   onPressed: () {},
                    //   highlightElevation: 0,
                    //   elevation: 0,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //         top: 13, bottom: 13, right: 40),
                    //     child: Text("?????"),
                    //   ),
                    // ),
                    //
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                        child: Text(
                          "Start",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 11),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(33)),
                        // child: OutlineButton.icon(
                        //   onPressed: () {},
                        //   icon: Icon(Icons.place),
                        //   label: Text("ไปไหนดี"),
                        //   shape: StadiumBorder(),
                        //   borderSide: BorderSide(color: Colors.green),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
