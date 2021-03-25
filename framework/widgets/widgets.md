# Widgets

1. Flutter 위젯

UI를 만들고 구성하는 모든 기본 단위 요소. 눈에 보이지 않는 요소들까지 위젯(Center, column, padding 등) 즉, 모든 것이 위젯이다. 앱 자체도 위젯이다.

2. Stateless widgets and Stateful widgets
    - Stateful : value 값을 지속적으로 추적 보존(동적)
    - Stateless : 이전 상호작용의 어떠한 값도 저장하지 않음(정적)

3. Widget tree
    - Widget들은 tree 구조로 정리될 수 있음
    - 한 Widget내에 얼마든지 다른 Widget들이 포함될 수 있음
    - Widget은 부모 위젯과 자식 위젯으로 구성
    - Parent widget을 Widget container라고 부르기도 함

ex)<br>
MyApp -<br> 
MaterialApp - <br>
MyHomePage - <br>
Scaffold - <br>
AppBar - Text, Center - Column - Image, TextField, Button ...<br><br>

---

