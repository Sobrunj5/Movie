part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  final RegistrationData registrationData;

  SignUpPage(this.registrationData);
  
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
  
class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  initState()
  


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        context.bloc<PageBloc>().add(GoToSplashPage());

        return;
      },
          child: Scaffold(
        body: Container(),
        
      ),
    );
  }
}