import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicplayerapp/Screens/Album_Screen.dart';
import 'package:musicplayerapp/Screens/Play_Screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff070D2D),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Hello Kamrul',
                style: TextStyle(
                  color: Color(0xffE6E6EA),
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'What you want to hear today?',
                style: TextStyle(
                  color: Color(0xff6B6E82),
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                top: 15,
                bottom: 15,
                right: 20,
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color(0xff161A37),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Looking for',
                    style: TextStyle(
                      color: Color(0xffB3B5BF),
                      fontSize: 14,
                      height: 1.2,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: Color(0xffE6E6EA),
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Albums',
                    style: TextStyle(
                      color: Color(0xffE6E6EA),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xff6B6E82),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlbumScreen(
                            assetimg: 'assets/img/3.jpg',
                            albumtitle: 'Taaarai Taarai',
                            albumby: 'Nargarbaul',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 170,
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 10,
                        bottom: 10,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/3.jpg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withAlpha(70),
                            blurRadius: 5,
                            spreadRadius: -3,
                            offset: Offset(0, 3.4),
                          ),
                        ],
                      ),
                      child: Container(
                        height: 45,
                        width: 140,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff3B3455).withOpacity(0.97),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Taaarai Taarai',
                                style: TextStyle(
                                  color: Color(0xffE6E6EA),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Nargarbaul',
                                style: TextStyle(
                                  color: Color(0xff9792A5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlbumScreen(
                            assetimg: 'assets/img/5.jpg',
                            albumtitle: 'Another Day',
                            albumby: 'Chirckut',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 170,
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 10,
                        bottom: 10,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/5.jpg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withAlpha(70),
                            blurRadius: 5,
                            spreadRadius: -3,
                            offset: Offset(0, 3.4),
                          ),
                        ],
                      ),
                      child: Container(
                        height: 45,
                        width: 140,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff3B3455).withOpacity(0.97),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Another Day',
                                style: TextStyle(
                                  color: Color(0xffE6E6EA),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Chirckut',
                                style: TextStyle(
                                  color: Color(0xff9792A5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlbumScreen(
                            assetimg: 'assets/img/7.jpg',
                            albumtitle: 'One Day',
                            albumby: 'All might',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 170,
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 10,
                        bottom: 10,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/7.jpg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withAlpha(70),
                            blurRadius: 5,
                            spreadRadius: -3,
                            offset: Offset(0, 3.4),
                          ),
                        ],
                      ),
                      child: Container(
                        height: 45,
                        width: 140,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff3B3455).withOpacity(0.97),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'One Day',
                                style: TextStyle(
                                  color: Color(0xffE6E6EA),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'All might',
                                style: TextStyle(
                                  color: Color(0xff9792A5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 25,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Played',
                    style: TextStyle(
                      color: Color(0xffE6E6EA),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xff6B6E82),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayScreen(
                      assetimg: 'assets/img/2.jpg',
                      musictitle: 'Cuban vibes miss you',
                      musicby: 'By Nargarbaul',
                    ),
                  ),
                );
              },
              child: Container(
                height: 100,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff161A37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/img/2.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cuban vibes miss you',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xffE6E6EA),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'By Nargarbaul',
                                style: TextStyle(
                                  color: Color(0xff9792A5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: '2.35/',
                                      style: TextStyle(
                                        color: Color(0xff9792A5),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '5.30',
                                      style: TextStyle(
                                        color: Color(0xffD04831),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
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
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayScreen(
                      assetimg: 'assets/img/1.jpg',
                      musictitle: 'Señorita',
                      musicby: 'Shawn Mendes & Camila Cabello',
                    ),
                  ),
                );
              },
              child: Container(
                height: 100,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff161A37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/img/1.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Señorita',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xffE6E6EA),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Shawn Mendes & Camila Cabello',
                                style: TextStyle(
                                  color: Color(0xff9792A5),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                  children: const <TextSpan>[
                                    TextSpan(
                                      text: '2.00/',
                                      style: TextStyle(
                                        color: Color(0xff9792A5),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '4.45',
                                      style: TextStyle(
                                        color: Color(0xffD04831),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
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
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 35,
        height: 70,
        padding: EdgeInsets.only(right: 3),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff161A37),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 15,
                spreadRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 22,
                  color: Color(0xffFE554A),
                ),
                SvgPicture.asset(
                  'assets/icons/search.svg',
                  height: 22,
                  color: Colors.white,
                ),
                SvgPicture.asset(
                  'assets/icons/favorite.svg',
                  height: 22,
                  color: Colors.white,
                ),
                SvgPicture.asset(
                  'assets/icons/bookmark.svg',
                  height: 22,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
