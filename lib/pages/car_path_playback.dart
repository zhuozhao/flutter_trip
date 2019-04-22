
import 'package:flutter/material.dart';
import 'package:amap_base/amap_base.dart';

class CarPathPlayback extends StatefulWidget{
  @override
  _CarPathPlaybackState createState() {
    // TODO: implement createState
    return _CarPathPlaybackState();
  }
}

class _CarPathPlaybackState extends State<CarPathPlayback>{


  AMapController _controller;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      appBar: AppBar(title: Text('实时监控'),centerTitle: false,),
      body: AMapView(
          onAMapViewCreated: (controller){
            _controller = controller;
          },
        amapOptions: AMapOptions(
          compassEnabled: false,
          zoomControlsEnabled: true,
          logoPosition: LOGO_POSITION_BOTTOM_CENTER,
          camera: CameraPosition(
            target: LatLng(30.851827, 120.801637),
            zoom: 15,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}

