import 'package:apple/ui/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> _categories = [
    'Round neck',
    'V neck',
    'Full sleeve',
    'Sleeveless'
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: cPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (context, index) => mSingleCategory(index),
        ),
      ),
    );
  }

  Widget mSingleCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: cPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      _selectedIndex == index ? cTextColor : cTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: cPadding / 4),
              height: 2,
              width: 30,
              color:
                  _selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
