import 'package:flutter/material.dart';
import 'package:fp9/about.dart';
import 'package:fp9/tac.dart';
import 'package:fp9/tic.dart';
import 'package:share_plus/share_plus.dart';

class play extends StatefulWidget {
  const play({Key? key}) : super(key: key);

  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {
  Color c = Color(0xffF9975D);
  bool ishover = true;
  bool ishover1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Share.share('https://play.google.com/store/apps/details?id=com.tictactoe.android');
          }, icon: Icon(Icons.share)),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return about();
            },));
          }, icon: Icon(Icons.more_vert_rounded))
        ],
        toolbarHeight: 130,
        backgroundColor: Color(0xff588C73),
        automaticallyImplyLeading: false,
        title: Text("TIC TAC TOE",style: TextStyle(fontFamily: "OpenSans"),),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 5,color: Color(0xff588C73)),
                        bottom: BorderSide(width: 5,color: Color(0xffF2E394)),
                        left: BorderSide(width: 5,color: Color(0xffF2AE72)),
                        top: BorderSide(width: 5,color:  Color(0xffD96459)),
                      ),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("myimage/tic.webp"))),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTapCancel: () {
                    ishover = true;
                    setState(() {});
                  },
                  onTapDown: (details) {
                    ishover = false;
                    setState(() {});
                  },
                  onTapUp: (details) {
                    ishover = true;
                    setState(() {});
                  },
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return tac();
                      },
                    ));
                  },
                  onHover: (value) {
                    ishover = !value;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ishover ? Color(0xffF2AE72) : Color(0xffF2E394),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text("One player",style: TextStyle(fontSize: 20),),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTapCancel: () {
                    ishover1 = true;
                    setState(() {});
                  },
                  onTapDown: (details) {
                    ishover1 = false;
                    setState(() {});
                  },
                  onTapUp: (details) {
                    ishover1 = true;
                    setState(() {});
                  },
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return tic();
                      },
                    ));
                  },
                  onHover: (value) {
                    ishover1 = !value;
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color:
                            !ishover1 ? Color(0xffF2E394) : Color(0xffF2AE72),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text("Two player",style: TextStyle(fontSize: 20),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
