import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class CarMonitoring extends StatefulWidget{
  @override
  _CarMonitoringState createState() {
    // TODO: implement createState
    return _CarMonitoringState();
  }
}

class _CarMonitoringState extends State<CarMonitoring>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('实时监控'),centerTitle: false,),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(30.2564, 120.45896),
          zoom: 10
        ),
        layers: [
          TileLayerOptions(

            //urlTemplate: "http://webst0{s}.is.autonavi.com/appmaptile?style=6&x={x}&y={y}&z={z}",
            //urlTemplate: "http://webst0{s}.is.autonavi.com/appmaptile?style=8&x={x}&y={y}&z={z}",
            urlTemplate: "http://wprd0{s}.is.autonavi.com/appmaptile?x={x}&y={y}&z={z}&lang=zh_cn&size=1&scl=1&style=7",
            //urlTemplate: "http://webrd0{s}.is.autonavi.com/appmaptile?lang=zh_cn&size=1&scale=1&style=8&x={x}&y={y}&z={z}",
            subdomains: ["1", "2", "3", "4"],
            maxZoom: 16,
            cachedTiles: true,


          ),
        ],
      ),
    );
  }

}