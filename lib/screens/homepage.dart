import 'package:audio_player/utils/utils.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "MUSIC STORE",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 7,
        ),
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://i.pinimg.com/originals/9f/a1/3a/9fa13acf7fd692b9310adda64cd0be3f.jpg',
                singer: "Alan Walker",
                audio: 'alone.mp3',
                name: "Alone",
                r: 100,
                g: 30,
                b: 21,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://a10.gaanacdn.com/images/albums/93/2742293/crop_480x480_1595848353_2742293.jpg',
                singer: "Piyush Mehroliyaa & Meet Bros",
                audio: 'awara.mp3',
                name: "Aawara Shaam Hai",
                r: 75,
                g: 0,
                b: 130,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://i.pinimg.com/originals/96/c8/e9/96c8e9eae9e1d70c0c182d1315d91397.jpg',
                singer: "Luis Fonsi",
                audio: 'despcito.mp3',
                name: "Despacito",
                r: 0,
                g: 0,
                b: 255,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://1.bp.blogspot.com/-evad5qRQ4DI/Xw6dH3fKJ3I/AAAAAAAAJPQ/wNKyej6ZvLcB-2BQhADBLcRb1woKC2zWgCNcBGAsYHQ/s1600/Dil%2BTod%2BKe%2BSong%2BImage%2BBy%2BB%2BPraak.jpg',
                singer: "B Praak & Rochak Kohli",
                audio: 'dil_todke.mp3',
                name: "Dil Tod Ke",
                r: 100,
                g: 90,
                b: 25,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://m.media-amazon.com/images/M/MV5BNmY0OWFlMzYtMDNkZC00YTdhLWI4ZWEtM2I5OWZlYzVkNGQzXkEyXkFqcGdeQXVyNjE0ODc0MDc@._V1_.jpg',
                singer: "Anne-Marie & Marshmello",
                audio: 'friends.mp3',
                name: "Speak Your Mind",
                r: 255,
                g: 15,
                b: 0,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img: 'https://i.ytimg.com/vi/NOcjMo9u_rI/maxresdefault.jpg',
                singer: "Neha Kakkar & Badshah",
                audio: 'garmi.mp3',
                name: "Haaye Garmi",
                r: 184,
                g: 0,
                b: 211,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://a10.gaanacdn.com/gn_img/albums/koMWQBbqLE/oMWQlN1M3q/size_xxl_1511442065.webp',
                singer: "Akhil",
                audio: 'khab.mp3',
                name: "KHAAB",
                r: 75,
                g: 0,
                b: 130,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://i.pinimg.com/originals/67/57/bc/6757bc611dfb3c610b6abae774bf501c.jpg',
                singer: "Palak Muchhal & Atif Aslam",
                audio: 'musafir.mp3',
                name: "Musafir",
                r: 150,
                g: 75,
                b: 9500,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://i0.wp.com/orissadiary.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-16-at-3.28.35-PM.jpeg?fit=1280%2C1280&ssl=1',
                singer: "Guru Randhawa & Nikhita Gandhi",
                audio: 'nach.mp3',
                name: "Naach Meri Rani",
                r: 100,
                g: 20,
                b: 50,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://m.media-amazon.com/images/I/71YsVg7DF9L._SS500_.jpg',
                singer: "Baani Sandhu & Gur Sidhu",
                audio: 'parche.mp3',
                name: "8 Parche",
                r: 250,
                g: 0,
                b: 100,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://1.bp.blogspot.com/-t824IzTEJc8/Xe5mfbVq5CI/AAAAAAAAWBA/RgpRRlGgwcMgEjWtJmgFuyc15EuzE4mWQCLcBGAsYHQ/s1600/bohemia-amp-sidhu-moose-wala-s.jpg',
                singer: "Bohemia & Sidhu Moose Wala",
                audio: 'same_beef.mp3',
                name: "Same Beef",
                r: 0,
                g: 100,
                b: 40,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://i.pinimg.com/564x/fd/5c/58/fd5c5802a231e96dfbcfe59052e68be2.jpg',
                singer: "Aditya Gadhvi",
                audio: 'sapna.mp3',
                name: "Sapna Vinani Raat",
                r: 150,
                g: 20,
                b: 90,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://i.pinimg.com/originals/08/a5/92/08a592ab85ed83d83bfdaa7938437245.jpg',
                singer: "Arijit Singh",
                audio: 'shayad.mp3',
                name: "Shayad",
                r: 30,
                g: 25,
                b: 80,
              ),
              SizedBox(
                height: 10,
              ),
              SongContainer(
                img:
                    'https://1.bp.blogspot.com/-EcBcVfrhypA/YFnru0CQDPI/AAAAAAAAAkY/JSXPZpTl-eItyBnUCNPSHFV3NvjYeFiAACLcBGAsYHQ/s554/Tere%2BNaal%2BLyrics%2BDarshan%2BRaval%2BTulsi%2BKumar.jpeg',
                singer: "Darshan Raval & Tulsi Kumar",
                audio: 'terenaal.mp3',
                name: "Tere Naal",
                r: 150,
                g: 20,
                b: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
