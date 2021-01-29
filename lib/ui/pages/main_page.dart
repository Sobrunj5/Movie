part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: accentColor1,
          ),
          SafeArea(
              child: Container(
            color: Color(0xFFF6F7F9),
          )),
          ListView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                )),
          )
        ],
      ),
    );
  }
}

class BottomNavBarClipper extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
      throw UnimplementedError();
    }
  
    @override
    bool shouldReclip(CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
  
}