import 'package:apple/inkfiles/constants.dart';
import 'package:flutter/material.dart';

class mCategory extends StatefulWidget {
  @override
  _mCategoryState createState() => _mCategoryState();
}

class _mCategoryState extends State<mCategory> {
  int _selectedCategory = 0;
  List<String> _categories = [
    'All',
    'Laptop',
    'Desktop',
    'Mobile',
    'TV',
    'Headphone'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: cDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedCategory = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: cDefaultPadding,
                right: index == _categories.length - 1 ? cDefaultPadding : 0),
            padding: EdgeInsets.symmetric(horizontal: cDefaultPadding),
            decoration: BoxDecoration(
              color: _selectedCategory == index
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              _categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
