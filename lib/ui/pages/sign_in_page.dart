part of 'pages.dart';

class SignInpage extends StatefulWidget {
  @override
  _SignInpageState createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaulMargin),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
                child: Image.asset("assets/logo.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 40),
                child: Text(
                  "Welcom Bck,\nExplore!",
                  style: blackTextFont.copyWith(fontSize: 20),
                ),
              ),
              
            ],
          )),
    );
  }
}
