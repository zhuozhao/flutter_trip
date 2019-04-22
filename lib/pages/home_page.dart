import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_trip/pages/car_monitoring.dart';
import 'package:flutter_trip/pages/car_path_playback.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List _imagesUrl = [
    'https://imgsa.baidu.com/news/q%3D100/sign=35e9f502df09b3deedbfe068fcbe6cd3/1ad5ad6eddc451dae26c5e81b8fd5266d11632c5.jpg',
    'https://imgsa.baidu.com/news/q%3D100/sign=74fcf9985fda81cb48e687cd6267d0a4/3812b31bb051f8195f8a1226d4b44aed2e73e72b.jpg',
    'https://imgsa.baidu.com/news/q%3D100/sign=d17441debcb7d0a27dc9009dfbee760d/ca1349540923dd542a0e8a04df09b3de9c824858.jpg',
    'https://imgsa.baidu.com/news/q%3D100/sign=e2caad194da98226bec12f27ba82b97a/908fa0ec08fa513d2f9943b2336d55fbb2fbd9ae.jpg',
    'https://imgsa.baidu.com/news/q%3D100/sign=93c887d789d6277fef12363818391f63/bf096b63f6246b6018faa118e5f81a4c500fa2e1.jpg',
    'https://imgsa.baidu.com/news/q%3D100/sign=45774553d7f9d72a1164141de42b282a/b90e7bec54e736d17015ad6495504fc2d5626953.jpg',
    'https://imgsa.baidu.com/news/q%3D100/sign=0e022f78a518972ba53a04cad6cd7b9d/4bed2e738bd4b31c591587d789d6277f9e2ff8b5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
                child: Swiper(
                  itemCount: _imagesUrl.length,
                  autoplay: true,
                  pagination: SwiperPagination(),
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      _imagesUrl[index],
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        child: ConstrainedBox(
                          child:  Image.asset(
                            'images/homessjk.png',
                            fit: BoxFit.fill,

                          ),
                          constraints: BoxConstraints.expand(),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new CarMonitoring()),
                          );
                        },
                      ),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: InkWell(
                        child: ConstrainedBox(
                          child: Image.asset(
                            'images/home_button_bg_gjhf.png',
                            fit: BoxFit.fill,
                          ),
                          constraints: BoxConstraints.expand(),
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => new CarPathPlayback()),
                          );
                        },
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ConstrainedBox(
                              child: Image.asset(
                                'images/home_button_bg_lccx.png',
                                fit: BoxFit.fill,
                              ),
                              constraints: BoxConstraints.expand(),
                            ),
                            flex: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            child: ConstrainedBox(
                              child: Image.asset(
                                'images/home_button_bg_yhcx.png',
                                fit: BoxFit.fill,
                              ),
                              constraints: BoxConstraints.expand(),
                            ),
                            flex: 1,
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: ConstrainedBox(
                      child: Image.asset(
                        'images/home_button_bg_poi.png',
                        fit: BoxFit.fill,
                      ),
                      constraints: BoxConstraints.expand(),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
