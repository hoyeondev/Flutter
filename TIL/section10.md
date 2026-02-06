# Flutter의 Padding

### 기본 개념
Padding은 위젯의 내부 여백을 추가하는 위젯입니다. 자식 위젯과 Padding 위젯의 경계 사이에 빈 공간을 만듭니다.

### 기본 사용법
```dart
Padding(
  padding: EdgeInsets.all(16.0),
  child: Text('Hello'),
)
```

### EdgeInsets 종류

#### EdgeInsets.all(value) - 모든 방향에 동일한 여백
```dart
padding: EdgeInsets.all(20.0)
```

#### EdgeInsets.symmetric - 수평/수직 방향으로 대칭 여백
```dart
padding: EdgeInsets.symmetric(
  horizontal: 20.0,
  vertical: 10.0,
)
```

#### EdgeInsets.only - 특정 방향에만 여백
```dart
padding: EdgeInsets.only(
  left: 10.0,
  top: 20.0,
  right: 10.0,
  bottom: 20.0,
)
```
#### EdgeInsets.fromLTRB - 좌, 상, 우, 하 순서로 지정
```dart
padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0)
EdgeInsets.zero - 여백 없음
dartpadding: EdgeInsets.zero
```

### Margin vs Padding

- Padding: 위젯 내부의 여백 (콘텐츠와 테두리 사이)
- Margin: Container의 속성으로, 위젯 외부의 여백 (다른 위젯과의 간격)

```dart
Container(
  margin: EdgeInsets.all(20.0),  // 외부 여백
  padding: EdgeInsets.all(10.0), // 내부 여백
  child: Text('Hello'),
)
```
