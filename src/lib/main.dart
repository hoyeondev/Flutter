import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 39, 203, 58)),
      ),
      home: const MyHomePage(title: '플러터 스터디1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    ),
    body: Container(
  color: Colors.grey[200],
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      // Expanded(
      //   flex: 3,
      //   child: Image.asset(
      //     'lib/img/profile.png',
      //     width: double.infinity,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100], // 배경색
              borderRadius: BorderRadius.circular(20), // 둥근 모서리 반경
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15), // 그림자 색
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 5), // 그림자 위치 조정
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // 이미지도 동일하게 둥글게
              child: Image.asset(
                'lib/img/profile.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 53),
      // Divider 추가
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 12),
        child: Divider(
          color: Colors.grey,  // 선 색상
          thickness: 1,        // 선 두께
        ),
      ),
      Expanded(
        flex: 2,
        child : Padding (
          padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: ElevatedButton(
                onPressed: () {
                  print('이름 버튼 클릭');
                  // 팝업창 띄우기
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('이름'),
                        content: const Text(
                          '박호연',
                          textAlign: TextAlign.center, // 텍스트 가운데 정렬
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // 팝업 닫기
                            },
                            child: const Text('확인'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,           // 텍스트 크기
                  fontWeight: FontWeight.bold,
                ),
                foregroundColor: Colors.white,  // 텍스트 색상
                backgroundColor: Colors.green,  // 버튼 배경색 (선택 사항)
              ),
              child: const Text('이름'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
                child: ElevatedButton(
                onPressed: () {
                  // 팝업창 띄우기
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('연락처'),
                        content: const Text(
                          '010-1234-4567',
                          textAlign: TextAlign.center, // 텍스트 가운데 정렬
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // 팝업 닫기
                            },
                            child: const Text('확인'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,           // 텍스트 크기
                  fontWeight: FontWeight.bold,
                ),
                foregroundColor: Colors.white,  // 텍스트 색상
                backgroundColor: Colors.green,  // 버튼 배경색 (선택 사항)
              ),
                child: const Text('연락처'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
                child: ElevatedButton(
                onPressed: () {
                  // 팝업창 띄우기
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('직업'),
                        content: const Text(
                          'S/W Engineer',
                          textAlign: TextAlign.center, // 텍스트 가운데 정렬
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // 팝업 닫기
                            },
                            child: const Text('확인'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,           // 텍스트 크기
                  fontWeight: FontWeight.bold,
                ),
                foregroundColor: Colors.white,  // 텍스트 색상
                backgroundColor: Colors.green,  // 버튼 배경색 (선택 사항)
              ),
                child: const Text('직업'),
              ),
            ),
          ],
        ),
        ),
      )

    ],
  ),
)

  );
}

}
