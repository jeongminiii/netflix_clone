import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/home_screen.dart';
import 'package:netflix_clone/widget/bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  //late을 안붙였을때는 왜 오류가 날까?

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그 안보이게 해주는 코드
      title: 'NengFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        //accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4, //메뉴 개수
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            //사용자가 직접 스크롤하는 것을 막는 코드
            children: <Widget>[
              const HomeScreen(),
              Container(
                child: const Center(
                  child: Text('2'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('3'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('4'),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const Bottom(),
        ),
      ),
    );
  }
}
