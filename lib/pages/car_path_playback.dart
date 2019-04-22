import 'package:flutter/material.dart';
import 'package:amap_base/amap_base.dart';

const markerList = const [
  LatLng(30.308802, 120.071179),
  LatLng(30.2412, 120.00938),
  LatLng(30.296945, 120.35133),
  LatLng(30.328955, 120.365063),
  LatLng(30.181862, 120.369183),
];

class CarPathPlayback extends StatefulWidget {
  @override
  _CarPathPlaybackState createState() {
    // TODO: implement createState
    return _CarPathPlaybackState();
  }
}

class _CarPathPlaybackState extends State<CarPathPlayback> {
  AMapController _controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('轨迹回放'),
        centerTitle: false,
      ),
      body: AMapView(
        onAMapViewCreated: (controller) {
          _controller = controller;
          _controller.markerClickedEvent.listen((marker) {

            print(marker);
//            Scaffold.of(context)
//                .showSnackBar(SnackBar(content: Text(marker.toString())));
          });
          controller.addMarkers(markerList
              .map((latLng) => MarkerOptions(
                    icon: 'images/mark_car_runing.png',
                    position: latLng,
                    title: '哈哈',
                    snippet: '呵呵',
                  ))
              .toList());
        },
        amapOptions: AMapOptions(
          compassEnabled: true,
          zoomControlsEnabled: true,
          rotateGesturesEnabled: false,
          camera: CameraPosition(
            target: LatLng(30.851827, 120.801637),
            zoom: 12,
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
