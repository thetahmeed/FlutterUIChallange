import 'dart:ui';

import 'package:apple/jupiter/model/Car.dart';
import 'package:apple/jupiter/url_launcer/url_launcher.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key key, this.car}) : super(key: key);

  final Car car;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

bool showFullText = false;

class _DetailsPageState extends State<DetailsPage> {
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String amPm = 'am';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    String longDescription =
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ornare lacus et arcu bibendum, ac ornare sapien blandit. In hac habitasse platea dictumst. Nam in semper velit. Sed finibus convallis dui, et porta elit lobortis a. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ut facilisis orci. Cras nisi urna, pulvinar nec turpis vel, posuere pellentesque dui.
          \nUt hendrerit ipsum arcu, sed rhoncus neque ultrices ac. Aenean ornare orci neque, a venenatis velit rhoncus sed. Morbi sit amet justo quis dolor rutrum volutpat hendrerit et risus. Nunc ac hendrerit libero, id volutpat felis. Cras ac massa ligula. Nullam malesuada ligula et ipsum gravida dapibus. Suspendisse quis vehicula erat. Quisque leo velit, mollis nec pretium non, feugiat ac eros. Aenean vel elementum libero, ac lacinia diam.''';

    Future<void> _selectDate1(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate1,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate1)
        setState(() {
          selectedDate1 = picked;
        });
    }

    Future<void> _selectDate2(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate2,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate2)
        setState(() {
          selectedDate2 = picked;
        });
    }

    Future<void> _selectTime(BuildContext context) async {
      final TimeOfDay picked =
          await showTimePicker(context: context, initialTime: TimeOfDay.now());
      if (picked != null && picked != selectedTime)
        setState(() {
          selectedTime = picked.replacing(hour: picked.hourOfPeriod);
          if (selectedTime.period == DayPeriod.am)
            amPm = 'am';
          else
            amPm = 'pm';
        });
    }

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
                          Row(
                            children: [
                              Text(
                                widget.car.title.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  UrlLauncher()
                                      .makePhoneCall('tel:01700547406');
                                },
                                icon: Icon(
                                  Icons.call_rounded,
                                  color: Colors.blue.shade700,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  UrlLauncher()
                                      .makePhoneCall('sms:01700547406');
                                },
                                icon: Icon(
                                  Icons.message_rounded,
                                  color: Colors.blue.shade700,
                                ),
                              )
                            ],
                          ),
                          Text(
                            widget.car.description
                                .replaceAll('Looking for a ', '')
                                .replaceAll('?', ' car'),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Divider(),
                          showFullText
                              ? Text(
                                  longDescription,
                                  textAlign: TextAlign.justify,
                                )
                              : Text(
                                  longDescription,
                                  textAlign: TextAlign.justify,
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showFullText = !showFullText;
                              });
                            },
                            child: Text(
                              showFullText ? 'See less' : 'See more',
                              style: TextStyle(color: Colors.blue.shade700),
                            ),
                          ),
                          Divider(),
                          Text(
                            'Select date:',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _selectDate1(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "${selectedDate1.day.toString().padLeft(2, '0')}/${selectedDate1.month.toString().padLeft(2, '0')}/${selectedDate1.year.toString()}",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ),
                              Text(' - '),
                              GestureDetector(
                                onTap: () {
                                  _selectDate2(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "${selectedDate2.day.toString().padLeft(2, '0')}/${selectedDate2.month.toString().padLeft(2, '0')}/${selectedDate2.year.toString()}",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Text(
                            'Select pick-up time:',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectTime(context);
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                "${selectedTime.hour.toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')} " +
                                    amPm,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue.shade800,
                              ),
                            ),
                          ),
                          Divider(),
                          Text(
                            'Select pick-up point:',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 8),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.my_location_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'Current location',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.blue.shade800,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.blue.shade800,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'Custom pick-up point',
                                          style: TextStyle(
                                            color: Colors.blue.shade800,
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                      //color: Colors.blue.shade800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton.extended(
                                heroTag: 'fab0',
                                icon: Icon(Icons.confirmation_num_outlined),
                                onPressed: () {
                                  UrlLauncher()
                                      .makePhoneCall('tel:01700547406');
                                },
                                label: Text('Book now'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'img${widget.car.position}',
              child: Image.network(
                widget.car.img,
                width: isPortrait ? size.width - 10 : 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
