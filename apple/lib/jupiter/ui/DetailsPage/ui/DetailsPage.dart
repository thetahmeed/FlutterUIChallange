import 'package:apple/jupiter/model/Car.dart';
import 'package:apple/jupiter/url_launcer/url_launcher.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key, this.car}) : super(key: key);

  final Car car;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    String longDescription =
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare lacus et arcu bibendum, ac ornare sapien blandit. In hac habitasse platea dictumst. Nam in semper velit. Sed finibus convallis dui, et porta elit lobortis a. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ut facilisis orci. Cras nisi urna, pulvinar nec turpis vel, posuere pellentesque dui.
          \nUt hendrerit ipsum arcu, sed rhoncus neque ultrices ac. Aenean ornare orci neque, a venenatis velit rhoncus sed. Morbi sit amet justo quis dolor rutrum volutpat hendrerit et risus. Nunc ac hendrerit libero, id volutpat felis. Cras ac massa ligula. Nullam malesuada ligula et ipsum gravida dapibus. Suspendisse quis vehicula erat. Quisque leo velit, mollis nec pretium non, feugiat ac eros. Aenean vel elementum libero, ac lacinia diam.''';

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                color: Colors.white,
                elevation: 8,
                child: Container(
                  height: size.height,
                  width: size.width - 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 130),
                          Text(
                            car.title.toUpperCase(),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            car.description
                                .replaceAll('Looking for a ', '')
                                .replaceAll('?', ' car'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Divider(),
                          Text(longDescription),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton.extended(
                                heroTag: 'fab1',
                                icon: Icon(Icons.call_rounded),
                                onPressed: () {
                                  UrlLauncher()
                                      .makePhoneCall('tel:01700547406');
                                },
                                label: Text('Call'),
                              ),
                              SizedBox(width: 6),
                              FloatingActionButton.extended(
                                heroTag: 'fab2',
                                icon: Icon(Icons.message_rounded),
                                onPressed: () {
                                  UrlLauncher()
                                      .makePhoneCall('sms:01700547406');
                                },
                                label: Text('Message'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'img${car.position}',
              child: Image.network(
                car.img,
                width: isPortrait ? size.width - 10 : 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
