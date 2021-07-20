import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Play_Screen.dart';

class AlbumScreen extends StatefulWidget {
  final String assetimg;
  final String albumtitle;
  final String albumby;
  AlbumScreen({
    required this.assetimg,
    required this.albumtitle,
    required this.albumby,
  });

  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

List<String> assetimgs = [
  '8.png',
  '9.png',
  '10.png',
  '11.png',
  '12.png',
  '13.png',
  '14.png',
];

List<String> albumtitles = [
  'Deixa eu falar pra você',
  'Tadow',
  'MEU PEDAÇO DE PECADO',
  'Lost On You',
  "It's You",
  'Heartbreak Anniversary',
  'Someone You Loved',
];

List<String> albumbys = [
  'Josue Bom De Faixa',
  'Fkj & Masego',
  'João Gomes',
  'LP',
  'Ali Gatie',
  'Giveon',
  'Lewis Capaldi',
];

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${widget.assetimg}'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                child: Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black87,
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          height: 16,
                          width: 16,
                          child: SvgPicture.asset(
                            'assets/icons/return.svg',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          '${widget.albumtitle}',
                          style: TextStyle(
                            color: Color(0xffE6E6EA),
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 1.0,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22),
                        child: Text(
                          '${widget.albumby}',
                          style: TextStyle(
                            color: Color(0xffE6E6EA),
                            height: 1.3,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 1.0,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22),
                        child: Text(
                          '5 hr 36 min . 50 song',
                          style: TextStyle(
                            color: Color(0xff7C7C89),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210,
              child: Container(
                height: MediaQuery.of(context).size.height - 210,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color(0xff070D2D),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView.builder(
                  itemCount: assetimgs.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayScreen(
                              assetimg: 'assets/img/${assetimgs[index]}',
                              musictitle: albumtitles[index],
                              musicby: albumbys[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 95,
                        margin: EdgeInsets.only(
                          left: 20,
                          top: 5,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 75,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/${assetimgs[index]}'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            albumtitles[index],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: Color(0xffE6E6EA),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('More');
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  right: 30, top: 10),
                                              child: SvgPicture.asset(
                                                'assets/icons/more.svg',
                                                color: Colors.white,
                                                height: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        albumbys[index],
                                        style: TextStyle(
                                          color: Color(0xff9792A5),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '2.00',
                                        style: TextStyle(
                                          color: Color(0xff9792A5),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
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
                  },
                ),
              ),
            ),
            Positioned(
              top: 180,
              right: 25,
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFE5430),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffFE5430).withOpacity(0.4),
                      blurRadius: 30,
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.play_arrow,
                  size: 32,
                  color: Color(0xffE6E6EA),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
