import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DogPage extends StatefulWidget {
  @override
  _DogPageState createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  var _fab = Icons.favorite_outline_rounded;
  var _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(45)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.purple],
                ),
              ),
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.menu_rounded, color: Colors.white),
                            CircleAvatar(
                              child: Icon(Icons.shopping_cart_rounded,
                                  color: Colors.pink),
                              backgroundColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Men\'s Flex Experience Run',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Size: 7.5\nBrand: Nike',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: RatingBar.builder(
                                initialRating: 3.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.amber),
                                onRatingUpdate: (r) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 30,
                    bottom: -25,
                    child: FloatingActionButton(
                      elevation: 10,
                      onPressed: () {
                        setState(() {
                          if (_fab == Icons.favorite_rounded) {
                            _fab = Icons.favorite_outline_rounded;
                          } else {
                            _fab = Icons.favorite_rounded;
                          }
                        });
                      },
                      child: Icon(
                        _fab,
                        color: Colors.pink,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: -55,
                    child: Image.network(
                        'https://ya-webdesign.com/transparent250_/adidas-shoes-png.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deccription',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Nunc hendrerit, lacus nec dictum mattis, erat nunc vestibulum ex, nec feugiat neque lectus tempus nunc. Maecenas et posuere orci. Cras at lectus convallis, sollicitudin eros sed, rutrum ante. Suspendisse egestas nec ante quis laoreet. Proin neque elit, pulvinar sed risus ac, vehicula rhoncus sem. Donec in aliquet nibh.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Quantity',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.pink, Colors.purple],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_quantity > 1) _quantity--;
                              });
                            },
                            child: Icon(Icons.remove_rounded,
                                color: Colors.white)),
                        Text(
                          '   $_quantity   ',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _quantity++;
                              });
                            },
                            child:
                                Icon(Icons.add_rounded, color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          r'$105',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(8),
                        height: 120,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.pink, Colors.purple],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
