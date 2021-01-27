part of 'pages.dart';

class SignInpage extends StatefulWidget {
  @override
  _SignInpageState createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    context
        .bloc<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor2)));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaulMargin),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 70,
                    child: Image.asset("assets/logo.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70, bottom: 40),
                    child: Text(
                      "Welcom Back,\nExplore!",
                      style: blackTextFont.copyWith(fontSize: 20),
                    ),
                  ),
                  TextField(
                    onChanged: (text) {
                      setState(() {
                        isEmailValid = EmailValidator.validate(text);
                      });
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Email Address",
                      hintText: "Email Address",
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    onChanged: (text) {
                      setState(() {
                        isPasswordValid = text.length >= 6;
                      });
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      hintText: "Password",
                    ),
                  ),
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
                  Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.arrow_forward,
                          color: isEmailValid && isPasswordValid
                              ? Colors.white
                              : Color(0xFFBEBEBE),
                        ),
                        backgroundColor: isEmailValid && isPasswordValid
                            ? mainColor
                            : Color(0xFFE4E4E4),
                        onPressed: isEmailValid && isPasswordValid ? () async {
                          setState(() {
                            isSigningIn = true;
                          }); signInSignUpResult result = await AuthServices.signIn(emailController.text, passwordController.text);
                           if(result.user == null){ setState(() {
                            isSigningIn = false;
                          });}
                           Flushbar(
                             duration: Duration(seconds:4), flushbarPosition: FlushbarPosition.TOP, backgroundColor: Color(0xFFFF5C83),message:result.message,
                           )..show(context);
                        }
                      : null),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Start Fresh Now?",
                        style:
                            greyTextFont.copyWith(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Sign Up",
                        style: purpleTextFont,
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
