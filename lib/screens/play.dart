import 'package:audio_player/utils/time.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  String img;
  String name;
  String singer;
  String audio;
  Play({this.img, this.name, this.singer, this.audio});
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache player = AudioCache();
  bool isauto = false;
  bool isPlaying = true;
  int firstplay = 0;
  bool isPaused = false;
  bool isStopped = false;
  bool isResumed = false;

  double _sliderValue = 0;
  double _duration = 1;

  @override
  // ignore: must_call_super
  void initState() {
    player.loadAll([widget.audio]);
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        // ignore: missing_return
        int a = await audioPlayer.stop();

        print(a);
        Navigator.of(context).pushNamed('/');
      },
      // ignore: missing_return
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Now Playing",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            image: DecorationImage(
              image: NetworkImage(widget.img),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image: NetworkImage(widget.img),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  color: Colors.black.withOpacity(0.6),
                  height: 360,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 30,
                          ),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: Text(
                          widget.singer,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontSize: 18,
                          ),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          (isauto == false)
                              ? IconButton(
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  onPressed: (isPlaying)
                                      ? () async {
                                          setState(() {
                                            isauto = true;
                                            isStopped = true;
                                            isPaused = true;
                                          });
                                          if (firstplay == 0) {
                                            audioPlayer =
                                                await player.play(widget.audio);
                                            firstplay = 1;
                                          } else {
                                            int res =
                                                await audioPlayer.resume();
                                          }
                                          audioPlayer.onDurationChanged
                                              .listen((event) {
                                            _duration =
                                                event.inMilliseconds.toDouble();
                                          });
                                          audioPlayer.onAudioPositionChanged
                                              .listen((event) {
                                            setState(() {
                                              _sliderValue = event
                                                  .inMilliseconds
                                                  .toDouble();
                                            });
                                          });
                                        }
                                      : null,
                                )
                              : IconButton(
                                  icon: Icon(
                                    Icons.pause,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  onPressed: (isPaused)
                                      ? () async {
                                          int res = await audioPlayer.pause();
                                          setState(() {
                                            isauto = false;
                                            isStopped = true;
                                            isPaused = false;
                                          });
                                          (res == 1)
                                              ? ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      "Pause",
                                                    ),
                                                  ),
                                                )
                                              : ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      "Failed Pause",
                                                    ),
                                                  ),
                                                );
                                        }
                                      : null,
                                ),
                          IconButton(
                            icon: Icon(
                              Icons.stop,
                              size: 50,
                              color: Colors.white,
                            ),
                            onPressed: (isStopped)
                                ? () async {
                                    int res = await audioPlayer.stop();
                                    setState(() {
                                      isauto = false;
                                      isPlaying = true;
                                      isPaused = false;
                                      isResumed = false;
                                      isStopped = false;
                                      _sliderValue = 0;
                                    });
                                    (res == 1)
                                        ? ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                "Stop",
                                              ),
                                            ),
                                          )
                                        : ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                "Failed Stop",
                                              ),
                                            ),
                                          );
                                  }
                                : null,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.headset,
                                size: 50,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                          value: _sliderValue,
                          min: 0,
                          max: _duration,
                          onChanged: (val) async {
                            int result = await audioPlayer
                                .seek(Duration(milliseconds: val.toInt()));
                            setState(() {
                              _sliderValue = val;
                              print(_sliderValue);
                            });
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              tominute(_sliderValue.toInt()),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              tominute(_duration.toInt()),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
