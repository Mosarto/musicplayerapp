import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayScreen extends StatefulWidget {
  final String assetimg;
  final String musictitle;
  final String musicby;
  PlayScreen({
    required this.assetimg,
    required this.musictitle,
    required this.musicby,
  });

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070D2D),
      appBar: AppBar(
        backgroundColor: Color(0xff070D2D),
        elevation: 0.0,
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: SvgPicture.asset(
                  'assets/icons/return.svg',
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        title: Text(
          'Now Playing',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('More');
            },
            child: Container(
              margin: EdgeInsets.only(right: 20, top: 10),
              child: SvgPicture.asset(
                'assets/icons/more.svg',
                color: Colors.white,
                height: 15,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff161A37),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${widget.assetimg}'),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        '${widget.musictitle}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xffE6E6EA),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/favorite.svg',
                      height: 17,
                      width: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  '${widget.musicby}',
                  style: TextStyle(
                    color: Color(0xff6B6E82),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 7,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Color(0xffE6E6EA),
                  borderRadius: BorderRadiusDirectional.circular(5),
                ),
                child: Container(
                  height: 10,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xffFE5430),
                    borderRadius: BorderRadiusDirectional.circular(3),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3),
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1:23',
                      style: TextStyle(
                        color: Color(0xffA7AAB5),
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '-4:23',
                      style: TextStyle(
                        color: Color(0xffA7AAB5),
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Container(
                height: 115,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.repeat,
                      color: Color(0xff6B6E82),
                      size: 22,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SvgPicture.asset(
                      'assets/icons/previous.svg',
                      height: 17,
                      width: 18,
                      color: Color(0xffBCBDC6),
                    ),
                    Spacer(),
                    Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFE5430),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffFE5430).withOpacity(0.2),
                            blurRadius: 30,
                            spreadRadius: 1,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.pause,
                        size: 32,
                        color: Color(0xffE6E6EA),
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/icons/next.svg',
                      height: 17,
                      width: 18,
                      color: Color(0xffBCBDC6),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SvgPicture.asset(
                      'assets/icons/download.svg',
                      height: 20,
                      color: Color(0xff6B6E82),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
