import 'package:audio_player/screens/play.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SongContainer extends StatefulWidget {
  int r, g, b;
  String img;
  String name;
  String singer;
  String audio;

  SongContainer(
      {this.img, this.name, this.singer, this.audio, this.r, this.b, this.g});

  @override
  _SongContainerState createState() => _SongContainerState();
}

class _SongContainerState extends State<SongContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Play(
              name: widget.name,
              img: widget.img,
              audio: widget.audio,
              singer: widget.singer,
            ),
          ),
        );
      },
      child: Container(
        height: 127,
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(widget.r, widget.g, widget.b, 1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.img),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Flexible(
                    child: Text(
                      widget.singer,
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 13,
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_right,
              size: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
