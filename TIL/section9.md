
# Row & Column

특별한 제한사항이 없다면 Row 위젯과 Column 위젯의 주축은 최대 크기를 차지하고 반대축은 최소 크기를 차지한다.

- Row: 자식들을 가로(수평) 방향으로 배치
- Column: 자식들을 세로(수직) 방향으로 배치

### mainAxisAlignment
주축(Row는 가로, Column은 세로) 방향으로 자식들을 어떻게 정렬할지 결정한다.

- start: 시작점에 배치
- end: 끝점에 배치
- center: 중앙에 배치
- spaceBetween: 양 끝에 붙이고 사이 공간 균등 배분
- spaceAround: 각 위젯 양옆에 동일한 공간
- spaceEvenly: 모든 간격을 동일하게

### crossAxisAlignment
교차축(Row는 세로, Column은 가로) 방향으로 자식들을 어떻게 정렬할지 결정한다.

- start: 시작점 정렬
- end: 끝점 정렬
- center: 중앙 정렬
- stretch: 교차축 전체를 채우도록 늘림
- baseline: 텍스트 베이스라인 기준 정렬

### mainAxisSize
주축 방향으로 얼마나 공간을 차지할지 결정한다.

- max: 가능한 최대 공간 차지
- min: 자식들이 필요로 하는 최소 공간만 차지

### 특징
자식 위젯들이 주축 방향으로 오버플로우되면 화면을 벗어나 에러가 발생할 수 있다.
Expanded나 Flexible 위젯으로 자식을 감싸면 남은 공간을 비율대로 배분할 수 있다.
중첩해서 사용하면 복잡한 그리드 레이아웃도 만들 수 있다.


---

#### 프로젝트 초기화 상태
```dart
import 'package:flutter/material.dart';
import 'package:row_and_column/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}

```
