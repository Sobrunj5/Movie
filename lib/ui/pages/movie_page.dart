part of 'pages.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //note : Header
        Container(
          decoration: BoxDecoration(
              color: accentColor1,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          padding: EdgeInsets.fromLTRB(defaulMargin, 20, defaulMargin, 30),
          child: BlocBuilder<UserBloc, UserState>(builder: (_, userState) {
            if (userState is UserLoaded) {
              return Row(
                children: <Widget>[
                  Container(
                    padding: ,
                  )
                  Column(
                    children: <Widget>[Text("data"), Text("")],
                  )
                ],
              );
            } else {
              return SpinKitFadingCircle(
                color: accentColor2,
                size: 50,
              );
            }
          }),
        )
      ],
    );
  }
}
