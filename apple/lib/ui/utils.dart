import 'dart:ui';

import 'package:apple/ui/fan.dart';
import 'package:flutter/material.dart';

class Utils {
  // First page widget
  Widget appBar(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SongsList()));
              },
              child: Icon(Icons.menu_rounded)),
        ),
        Expanded(child: Text('Liked songs', textAlign: TextAlign.center)),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.9),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: Icon(Icons.more_vert_rounded),
        ),
      ],
    );
  }

  Widget albumImage(BuildContext context) {
    var _imageURL =
        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/160db2f2cc6eaef1ad40cb4f5f43cffd_screen.jpg';
    return Container(
      margin: EdgeInsets.all(50),
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.height / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(6, 2),
          ),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 1),
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(-6, -2),
          ),
        ],
        border: Border.all(color: Colors.grey[300], width: 10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(_imageURL),
        ),
      ),
    );
  }

  Widget songName() {
    return Column(
      children: [
        Text(
          'Try to read my scilence',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
        Text(
          'Untold things',
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }

  Widget progressBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Stack(
        children: [
          Container(
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white),
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey[400], Colors.white],
              ),
            ),
          ),
          Container(
            height: 10,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white),
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white70, Colors.grey[700]],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget songTime() {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 0),
      child: Row(
        children: [
          Expanded(child: Text('0.45')),
          Expanded(child: Text('3.56', textAlign: TextAlign.end)),
        ],
      ),
    );
  }

  Widget controlButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: Icon(Icons.favorite_rounded),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: Icon(Icons.skip_previous_rounded),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: Icon(Icons.pause_rounded, size: 40),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: Icon(Icons.skip_next_rounded),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: Icon(Icons.loop_rounded),
        ),
      ],
    );
  }

  Widget lastButtons() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.equalizer_rounded),
          Icon(Icons.share_rounded),
        ],
      ),
    );
  }

  // Second page widget
  Widget listAppBar(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.chevron_left_rounded)),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Now playing, \'Try to read my scilence\'',
                textAlign: TextAlign.center),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xFFF4EFF6),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 2),
              ),
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(-6, -2),
              ),
            ],
          ),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.pause_rounded)),
        ),
        SizedBox(width: 18),
      ],
    );
  }

  Widget listBody() {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          singleSong('Favorite Place', 'Mike Ruekberg'),
          singleSong('Fireworks', 'Botanica'),
          singleSong('Dead Prophet', 'Botanica'),
          singleSong('The Dying Art', 'Mike Ruekberg'),
          singleSong('Things I See', 'Karmadelic'),
          singleSong('End of the Party', 'Mike Ruekberg'),
          singleSong('Earth Star', 'Karmadelic'),
          singleSong('Born to Fly', 'Mike Ruekberg'),
          singleSong('Years', 'Mike Ruekberg'),
          singleSong('Let\'s Go', 'Botanica'),
          singleSong('Favorite Place', 'Mike Ruekberg'),
          singleSong('Fireworks', 'Botanica'),
          singleSong('Dead Prophet', 'Botanica'),
          singleSong('The Dying Art', 'Mike Ruekberg'),
          singleSong('Things I See', 'Karmadelic'),
          singleSong('End of the Party', 'Mike Ruekberg'),
          singleSong('Earth Star', 'Karmadelic'),
          singleSong('Born to Fly', 'Mike Ruekberg'),
          singleSong('Years', 'Mike Ruekberg'),
          singleSong('Let\'s Go', 'Botanica'),
        ],
      ),
    );
  }

  Widget singleSong(String title, String singer) {
    return ListTile(
      title: Text(title),
      subtitle: Text(singer),
      trailing: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFFF4EFF6),
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(6, 2),
            ),
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, 1),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(-6, -2),
            ),
          ],
        ),
        child: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
