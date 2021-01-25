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
              TextField(),
              SizedBox(
                height: 16,
              ),
              TextField(),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  Text("Forgot Password",
                      style: greyTextFont.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                  Text(
                    "Get Now",
                    style: purpleTextFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(top: 40, bottom: 30),
                child: FloatingActionButton(
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: mainColor,
                  onPressed: () {},
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Start Fresh Now?",
                    style: greyTextFont.copyWith(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sign Up",
                    style: purpleTextFont,
                  )
                ],
              )
            ],
          )),
    );
  }
}
