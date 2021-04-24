import 'package:apple/horn/model/Books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../constants.dart';

class theCard extends StatelessWidget {
  const theCard({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.height - 350,
      child: Swiper(
        itemCount: allBooks.length,
        itemWidth: _size.width - 50,
        itemHeight: _size.height - 350,
        layout: SwiperLayout.TINDER,
        pagination: SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.blue,
            color: Colors.white,
            activeSize: 12,
            size: 8,
          ),
        ),
        itemBuilder: (context, index) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    elevation: 8,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 140),
                          Text(
                            allBooks[index].name,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 44,
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'J. K. Rowling',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 32),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Know more',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 18,
                                  color: gradientEndColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Icon(Icons.arrow_right_rounded, color: gradientEndColor),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 10,
                top: -65,
                child: Image.network(allBooks[index].image, height: 250),
              ),
            ],
          );
        },
      ),
    );
  }
}
