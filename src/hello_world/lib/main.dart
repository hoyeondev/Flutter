import 'package:flutter/material.dart';

/// 'android/app/build.gradle'
void main(){
  /// 플러터 앱을 실행한다.
  runApp(
    /// MeterialApp은 항상 최상위에 위치한다.
    /// Scaffold는 바로 아래에 위치한다.
    /// 위젯 -> Widget
    MaterialApp(
      /// debug 표시 유무 설정
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child:Text(
            'Hello World',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ) // Text
      ), //Scaffold
    ), // MaterialApp
  );
}