import 'package:flutter/material.dart';

class EggPage extends StatefulWidget {
  @override
  _EggPageState createState() => _EggPageState();
}

class _EggPageState extends State<EggPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height / 5),
            child: AppBar(
              flexibleSpace: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Text(
                        'GreenCart',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Segoe UI'),
                      ),
                    ),
                  ],
                ),
              ),
              /*title: Text(
                'GreenShop',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              centerTitle: true,*/
              elevation: 0,
              backgroundColor: Colors.green.withOpacity(0.1),
              leading: Icon(
                Icons.menu_rounded,
                color: Colors.green,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.green,
                  ),
                )
              ],
              bottom: TabBar(
                unselectedLabelColor: Colors.green.shade200,
                indicatorColor: Colors.green,
                labelColor: Colors.green,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(fontSize: 16),
                tabs: [
                  Tab(text: "Top"),
                  Tab(text: "Fruits"),
                  Tab(text: "Flowers"),
                  Tab(text: "Plants"),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              PageOne(),
              PageTwo(),
              PageThree(),
              PageFour(),
            ],
          ),
        ),
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var _mangoImage =
      'https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332033owayr.png';

  var _orangeImage =
      'https://purepng.com/public/uploads/large/purepng.com-orange-orangeorangefruitbitter-orangeorangesclip-art-1701527337344b9buv.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //alignment: Alignment.topLeft,
          height: MediaQuery.of(context).size.height / 2,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => DetailsPage()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(18),
                        alignment: Alignment.topCenter,
                        width: 220,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.green,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              'From',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              r'$8',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 18),
                            Image.network(
                              _orangeImage,
                              width: 140,
                              height: 140,
                            ),
                            SizedBox(height: 18),
                            Text(
                              'Orange',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -15,
                      child: FloatingActionButton(
                        elevation: 12,
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Icon(Icons.add_shopping_cart_rounded,
                            color: Colors.green),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.all(18),
                      alignment: Alignment.topCenter,
                      width: 220,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.green,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 8),
                          Text(
                            'From',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            r'$5',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 18),
                          Image.network(
                            _mangoImage,
                            width: 140,
                            height: 140,
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Mango',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -15,
                      child: FloatingActionButton(
                        elevation: 12,
                        backgroundColor: Colors.white,
                        onPressed: () {},
                        child: Icon(Icons.add_shopping_cart_rounded,
                            color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 18),
              Text(
                'Duis faucibus eleifend fringilla. Vivamus convallis lorem laoreet lectus commodo lacinia. Maecenas scelerisque nunc id accumsan pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec euismod nisi, et consequat augue. Nunc viverra euismod ipsum.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Two'),
    );
  }
}

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Three'),
    );
  }
}

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Four'),
    );
  }
}

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var _orangeImage =
      'https://purepng.com/public/uploads/large/purepng.com-orange-orangeorangefruitbitter-orangeorangesclip-art-1701527337344b9buv.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              Container(
                padding: EdgeInsets.all(18),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Orange',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Size',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Medium',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'From',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$8.65',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 30,
                bottom: -90,
                child: Hero(
                  tag: 'image',
                  child: Image.network(
                    _orangeImage,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product description',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'Duis faucibus eleifend fringilla. Vivamus convallis lorem laoreet lectus commodo lacinia. Maecenas scelerisque nunc id accumsan pellentesque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec euismod nisi, et consequat augue. Nunc viverra euismod ipsum.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 18),
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  '1.5 KG',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.green,
                  ),
                  label: Text(
                    'Add to cart',
                    style: TextStyle(color: Colors.green),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// egg