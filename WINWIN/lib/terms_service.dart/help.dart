import 'dart:async';
import '../gps.dart';
import 'package:flutter/material.dart';
import 'package:WINWIN/model/slide.dart';
//import 'package:MyApp/model/slide.dart';
//import 'package:MyApp/widgets/slide_dots.dart';
//import 'package:MyApp/widgets/slide_item.dart';
//import 'package:flutter/material.dart';
import '../widgets/slide_item.dart';
//import '../widgets/slide.dart';
import '../widgets/slide_dots.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
  //final PageController _pageController = PageController(
  //initialPage : 0
  //);
}

class _HelpState extends State<Help> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: slideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              children: <Widget>[
                                for (int i = 0; i < slideList.length; i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ])
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          'ฉันเข้าใจแล้ว',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(15),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MapSample()),
                          );
                        },
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.black,
                          child: Text('ต่อไป'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapSample()),
                            );

                            //print(nameController.text);
                            //print(passwordController.text);
                          },
                        ),
                      )
                    ])
              ],
            )),
      ),
    );
  }
}
