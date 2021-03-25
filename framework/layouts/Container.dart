//
// Margin & padding 포함 Container

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      body: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric(
            // 마진 추가
            vertical: 50,
            horizontal: 100),
        padding: EdgeInsets.all(10),
        child: Text(
          'Hello',
          style: TextStyle(backgroundColor: Colors.red),
        ),
      ),
    );
  }
}
