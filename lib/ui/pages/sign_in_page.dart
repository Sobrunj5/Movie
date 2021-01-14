part of 'pages.dart';

class SignInpage extends StatefulWidget {
  @override
  _SignInpageState createState() => _SignInpageState();
}

class _SignInpageState extends State<SignInpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text ('Sign In Page')),
      body: Center(
        child: RaisedButton(
          child: Text("Sign In"),
        onPressed: (){
          AuthServices.signIn("sobrun@gmail.com", "123456");
        }, ),
      ),
    );
  }
}