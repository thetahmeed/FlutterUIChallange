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

bool showFullText = false;
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
                            car.title.toUpperCase(),
                            widget.car.description
                                .replaceAll('Looking for a ', '')
                                .replaceAll('?', ' car'),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
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
                            car.description
                                .replaceAll('Looking for a ', '')
                                .replaceAll('?', ' car'),
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
                          Text(longDescription),
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
