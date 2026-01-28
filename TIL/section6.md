
# Hello World

### 1. 프로젝트 생성하기
1. 안드로이드 스튜디오 실행
2. New Fluttur Project 눌러서 새 프로젝트 생성
3. sdk 경로 설정이 안되어 있을 경우 flutter의 최상의 폴더를 경로로 지정
<img width="600" height="146" alt="image" src="https://github.com/user-attachments/assets/75f6027b-d021-4e90-9187-b5c3acfea4ec" />
4. Mac일 경우 `Documents`에 프로젝트 생성하기 / Windows도 문서 디렉토리 안에다가 만들기 (C드라이브에 생성)

<img width="792" height="383" alt="스크린샷 2026-01-28 오후 3 13 49" src="https://github.com/user-attachments/assets/778120f8-2bb6-4076-b9e4-495619330386" />

---

### 2. 화면 중앙에 글자 렌더링하기

```dart
import 'package:flutter/material.dart';

/// 'android/app/build.gradle'
void main(){
  /// 플러터 앱을 실행한다.
  runApp(
    /// MeterialApp은 항상 최상위에 위치한다.
    /// Scaffold는 바로 아래에 위치한다.
    MaterialApp(
      home: Scaffold(
        body: Center(
          child:Text(
              'Hello World'
          ),
        ) // Text
      ), //Scaffold
    ), // MaterialApp
  );
}
```

---

### 3. 위젯이란?

`Flutter`에서 모든 것은 위젯이다.
간단히 말하면 화면에 보이는 모든 요소가 위젯

---

### 프로그램 실행

```
open -a Simulator
flutter run
```
