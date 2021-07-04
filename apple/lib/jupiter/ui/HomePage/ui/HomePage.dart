import 'package:apple/jupiter/const/const.dart';
import 'package:apple/jupiter/model/Car.dart';
import 'package:apple/jupiter/ui/HomePage/components/CartItem.dart';
import 'package:apple/jupiter/ui/HomePage/components/SingleDot.dart';
import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class JupitarPage extends StatefulWidget {
  const JupitarPage({Key key}) : super(key: key);

  @override
  _JupitarPageState createState() => _JupitarPageState();
}

int currentPage = 0;

class _JupitarPageState extends State<JupitarPage> {
  @override
  Widget build(BuildContext context) {
    Size sSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: dPadding,
                width: double.infinity,
              ),
              Text(
                'What are you looking for?',
                style: GoogleFonts.teko(
                  textStyle: TextStyle(fontSize: 28),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(height: cPadding),
              Swiper(
                onIndexChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: carList.length,
                itemHeight: sSize.height - 400,
                itemWidth: sSize.width - 50,
                layout: SwiperLayout.TINDER,
                itemBuilder: (context, index) {
                  return CartItem(context: context, index: index, size: sSize);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  carList.length,
                  (index) => SingleDot(index: index),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: homeFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: botttomAppBar(),
    );
  }

  FloatingActionButton homeFab() {
    return FloatingActionButton(
      heroTag: 'fab3',
      onPressed: () {},
      child: Icon(Icons.home_rounded),
    );
  }

  BottomAppBar botttomAppBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        children: [
          SizedBox(width: dPadding),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_rounded),
          ),
          SizedBox(width: dPadding),
        ],
      ),
    );
  }
}
