import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xff588C73),
        automaticallyImplyLeading: true,
        title: Text("About Us",style: TextStyle(fontFamily: "OpenSans"),),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                   /* Color(0xff588C73),*/
                    Color(0xffF2E394),
                    Color(0xffF2AE72),
                    Color(0xffD96459)
                  ])),
          padding: EdgeInsets.all(10),
          child: Text("""   	 TIC-TAC-TOE is a simple android application consist of  two way to play like single player and double player. It is made for entertainment purpose and here is the list of material and it`s source used in this app. 
 	The image used in first page is taken from freepik website link is below:\n
https://img.freepik.com/premium-vector/tic-tac-toe-game-with-hearts-valentine-s-day-design-concept_43029-1451.jpg?w=740  , it is clear that we do not own such copyrights of picture.\n
	The inspiration of colour used in application is taken from another website called mystock.im, link is given below:
https://colorhunt.co/?ref=thestocks.im\n
	We are happy to give you the small pack of entertainment in form of game.\n 
Enjoy the application.
""",style: TextStyle(fontFamily: "OpenSans",fontSize: 24),),
        ),
      ),
    );
  }
}
