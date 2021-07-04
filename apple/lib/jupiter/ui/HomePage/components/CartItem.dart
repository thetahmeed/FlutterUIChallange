import 'package:apple/jupiter/model/Car.dart';
import 'package:apple/jupiter/ui/DetailsPage/ui/DetailsPage.dart';
import 'package:apple/jupiter/url_launcer/url_launcher.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
    @required this.context,
    @required this.index,
    @required this.size,
  }) : super(key: key);

  final BuildContext context;
  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => DetailsPage(
              car: carList[index],
            ),
            transitionDuration: Duration(seconds: 0),
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // background
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            color: Colors.white,
            elevation: 8,
            child: SizedBox(
              height: size.height - 500,
              width: size.width - 50,
            ),
          ),
          // img
          Positioned(
            top: -50,
            left: 20,
            child: Hero(
              tag: 'img$index',
              child: Image.network(
                carList[index].img,
                width: size.width - 80,
              ),
            ),
          ),
          // des
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Text(
                carList[index].description,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // title
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: cPadding),
              child: Text(
                carList[index].title.toUpperCase(),
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: Row(
                children: [
                  Spacer(),
                  FloatingActionButton(
                    heroTag: 'fab1',
                    onPressed: () {
                      UrlLauncher().makePhoneCall('tel:01700547406');
                    },
                    child: Icon(
                      Icons.call_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: cPadding - 8),
                  FloatingActionButton(
                    heroTag: 'fab2',
                    onPressed: () {
                      UrlLauncher().makePhoneCall('sms:01700547406');
                    },
                    child: Icon(
                      Icons.message_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
