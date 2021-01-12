part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    
      if (firebaseUser == null) {
        return SignInpage();
        
      } 
      else {
        return MainPage();
      }
    
  }
}
