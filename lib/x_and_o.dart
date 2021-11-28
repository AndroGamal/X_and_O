import 'package:flutter/material.dart';
import 'package:x_and_o/Toastan.dart';

class x_o extends StatefulWidget {
  late Widget _navigation;

  x_o(Widget n) {
    _navigation = n;
  }

  @override
  State<StatefulWidget> createState() {
    return x_and_o(_navigation);
  }
}

class x_and_o extends State<x_o> {
  List<String> _st = ["", "", "", "", "", "", "", "", ""];
  bool _click = true;
  List<bool> _enable = [true, true, true, true, true, true, true, true, true];
  List<int> _o = [], _x = [];
  late BuildContext _contextdailog1;
  int _tx = 0, _to = 0;
  late Widget _navigation;

  x_and_o(Widget n) {
    _navigation = n;
  }

  void _r_o(int c) {
    _o.add(c);
    if (_o.indexOf(0) != -1 && _o.indexOf(1) != -1 && _o.indexOf(2) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(3) != -1 &&
        _o.indexOf(4) != -1 &&
        _o.indexOf(5) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(6) != -1 &&
        _o.indexOf(7) != -1 &&
        _o.indexOf(8) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(0) != -1 &&
        _o.indexOf(4) != -1 &&
        _o.indexOf(8) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(2) != -1 &&
        _o.indexOf(4) != -1 &&
        _o.indexOf(6) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(0) != -1 &&
        _o.indexOf(3) != -1 &&
        _o.indexOf(6) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(1) != -1 &&
        _o.indexOf(4) != -1 &&
        _o.indexOf(7) != -1) {
      _stop_game("O");
    } else if (_o.indexOf(2) != -1 &&
        _o.indexOf(5) != -1 &&
        _o.indexOf(8) != -1) {
      _stop_game("O");
    }
  }

  void _new_play() {
    setState(() {
      for (int i = 0; i < _enable.length; i++) {
        _enable[i] = true;
        _st[i] = "";
        _o = [];
        _x = [];
      }
    });
    Navigator.of(_contextdailog1).pop();
  }

  void _stop_game(String winner) {
    Toastan().show_unusual(winner + " is winner", context);
    for (int i = 0; i < _enable.length; i++) {
      _enable[i] = false;
    }
    FlatButton button = FlatButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.deepPurple),
      ),
      onPressed: _new_play,
    );
    Container veiw = Container(
      height: 200.0,
      width: 200.0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/winner.gif"),
            Text(
              winner + " is winner",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
    AlertDialog alert = AlertDialog(
      content: veiw,
      actions: [button],
    );
    if (winner == "X") {
      _tx++;
    } else {
      _to++;
    }
    showDialog<void>(
      context: context,
      // false = user must tap button, true = tap outside dialog
      builder: (BuildContext dialogContext) {
        _contextdailog1 = dialogContext;
        return alert;
      },
    );
  }

  void _r_x(int c) {
    _x.add(c);
    if (_x.indexOf(0) != -1 && _x.indexOf(1) != -1 && _x.indexOf(2) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(3) != -1 &&
        _x.indexOf(4) != -1 &&
        _x.indexOf(5) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(6) != -1 &&
        _x.indexOf(7) != -1 &&
        _x.indexOf(8) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(0) != -1 &&
        _x.indexOf(4) != -1 &&
        _x.indexOf(8) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(2) != -1 &&
        _x.indexOf(4) != -1 &&
        _x.indexOf(6) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(0) != -1 &&
        _x.indexOf(3) != -1 &&
        _x.indexOf(6) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(1) != -1 &&
        _x.indexOf(4) != -1 &&
        _x.indexOf(7) != -1) {
      _stop_game("X");
    } else if (_x.indexOf(2) != -1 &&
        _x.indexOf(5) != -1 &&
        _x.indexOf(8) != -1) {
      _stop_game("X");
    }
  }

  Widget create() {
    return Scaffold(
      drawer: _navigation,
      // ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage _object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("X and O"),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("X:O"),
              Text(_tx.toString() + ":" + _to.toString(),
                  style: TextStyle(fontSize: 12)),
              GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(9, (index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 135.0,
                      width: 135.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                      ),
                      child: FlatButton(
                        child: Text(
                          _st[index],
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        padding: EdgeInsets.all(0.0),
                        onPressed: _enable[index]
                            ? () {
                                setState(() {
                                  if (_click) {
                                    _st[index] = "X";
                                  } else {
                                    _st[index] = "O";
                                  }
                                });
                                if (_click) {
                                  _r_x(index);
                                } else {
                                  _r_o(index);
                                }
                                _click = !_click;
                                _enable[index] = false;
                              }
                            : null,
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return create();
  }
}
