import 'package:flutter/material.dart';

class tic extends StatefulWidget {
  const tic({Key? key}) : super(key: key);

  @override
  State<tic> createState() => _ticState();
}

class _ticState extends State<tic> {
  String p1 = "X";
  String p2 = "O";
  String w = "";
  List<int> up = [];
  List<String> uv = [];
  List<int> rp = [];
  List<String> rv = [];
  int k = 0;
  List<String> l = List.filled(9, "");
  int cnt = 0;
  String msg = "game is running";
  bool winner = false;
  bool msg1 = false;

  bool ishover = true;
  bool ishover1 = true;
  bool ishover2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xff588C73),
        automaticallyImplyLeading: true,
        title: Text("Two - User",style: TextStyle(fontFamily: "OpenSans"),),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
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
                },onHover: (value) {
                    ishover = !value;
                    setState(() {});
                  },
                onTap: () {
                  if (!winner && cnt >= 0 && !msg1 && up.length > 0) {
                    int lastpos = up.last;
                    String lastval = uv.last;

                    l[lastpos] = "";
                    cnt--;
                    up.removeLast();
                    uv.removeLast();
                    rp.add(lastpos);
                    rv.add(lastval);

                    setState(() {});
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),

                  // margin: EdgeInsets.only(top: 2,bottom: 2, left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: ishover ? Color(0xffF2AE72) : Color(0xffF2E394),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: ListTile(
                    title: Icon(
                      Icons.undo,
                      color: Colors.black,
                    ),
                    subtitle: Text(
                      "Undo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
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
                },onHover: (value) {
                    ishover1 = !value;
                    setState(() {});
                  },
                onTap: () {
                  l = List.filled(9, "");
                  cnt = 0;
                  k = 0;
                  w = "";
                  msg = "game is running";
                  winner = false;
                  msg1 = false;
                  up.clear();
                  uv.clear();
                  rp.clear();
                  rv.clear();
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  // margin: EdgeInsets.only(top: 2,bottom: 2,  left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: ishover1 ? Color(0xffF2AE72) : Color(0xffF2E394),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: ListTile(
                    title: Icon(
                      Icons.lock_reset,
                      color: Colors.black,
                    ),
                    subtitle: Text("Reset",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTapCancel: () {
                  ishover2 = true;
                  setState(() {});
                },
                onTapDown: (details) {
                  ishover2 = false;
                  setState(() {});
                },
                onTapUp: (details) {
                  ishover2 = true;
                  setState(() {});
                },onHover: (value) {
                    ishover2 = !value;
                    setState(() {});
                  },
                onTap: () {
                  if (!winner && cnt >= 0 && !msg1 && rv.length > 0) {
                    int lastpos = rp.last;
                    String lastval = rv.last;

                    l[lastpos] = lastval;
                    cnt++;
                    rp.removeLast();
                    rv.removeLast();
                    up.add(lastpos);
                    uv.add(lastval);

                    setState(() {});
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),

                  // margin: EdgeInsets.only(top: 2,bottom: 2,  left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: ishover2 ? Color(0xffF2AE72) : Color(0xffF2E394),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: ListTile(
                    title: Icon(
                      Icons.redo,
                      size: 20,
                      color: Colors.black,
                    ),
                    subtitle: Text("Redo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
              ))
            ],
          )),
          Expanded(
              child: Container(
            width: 300,
            alignment: Alignment.center,
            child: ListTile(
              title: Text(
                "Status: ",
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                "${msg}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
          )),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                des(0),
                des(1),
                des(2),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                des(3),
                des(4),
                des(5),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                des(6),
                des(7),
                des(8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  des(int i) {
    return Expanded(
        flex: 1,
        child: InkWell(
          onTap: (l[i] == "" && !winner && !msg1)
              ? () {
                  if (cnt % 2 == 0) {
                    l[i] = p1;
                  } else {
                    l[i] = p2;
                  }

                  up.add(i);
                  uv.add(l[i]);

                  cnt++;
                  win();

                  setState(() {});
                }
              : null,
          child: Container(
            height: double.infinity,
            color: (l[i] == "")
                ? Color(0xff588C73)
                : (!winner)
                    ? ((l[i] == p1) ? Color(0xffF2E394) : Color(0xffF2AE72))
                    : (w == "p1")
                        ? ((l[i] == p1) ? Color(0xffD96459) : Color(0xff588C73))
                        : (w == "p2")
                            ? ((l[i] == p2)
                                ? Color(0xffD96459)
                                : Color(0xff588C73))
                            : null,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: Text(l[i],style: TextStyle(fontSize: 20),),
          ),
        ));
  }

  win() {
    if ((l[0] == p1 && l[1] == p1 && l[2] == p1) ||
        (l[3] == p1 && l[4] == p1 && l[5] == p1) ||
        (l[6] == p1 && l[7] == p1 && l[8] == p1) ||
        (l[0] == p1 && l[3] == p1 && l[6] == p1) ||
        (l[1] == p1 && l[4] == p1 && l[7] == p1) ||
        (l[2] == p1 && l[5] == p1 && l[8] == p1) ||
        (l[0] == p1 && l[4] == p1 && l[8] == p1) ||
        (l[2] == p1 && l[4] == p1 && l[6] == p1)) {
      msg = "$p1 is win";
      w = "p1";
      winner = true;
    } else if ((l[0] == p2 && l[1] == p2 && l[2] == p2) ||
        (l[3] == p2 && l[4] == p2 && l[5] == p2) ||
        (l[6] == p2 && l[7] == p2 && l[8] == p2) ||
        (l[0] == p2 && l[3] == p2 && l[6] == p2) ||
        (l[1] == p2 && l[4] == p2 && l[7] == p2) ||
        (l[2] == p2 && l[5] == p2 && l[8] == p2) ||
        (l[0] == p2 && l[4] == p2 && l[8] == p2) ||
        (l[2] == p2 && l[4] == p2 && l[6] == p2)) {
      msg = "$p2 is win";
      w = "p2";
      winner = true;
    } else if (cnt >= 8) {
      msg = "game is draw";
      msg1 = true;
    }
  }
}
