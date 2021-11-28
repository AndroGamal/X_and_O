import 'package:flutter/material.dart';
import 'package:x_and_o/Toastan.dart';

class siga extends StatefulWidget {
  late Widget _navigation;

  siga(Widget n) {
    _navigation = n;
  }

  @override
  State<StatefulWidget> createState() {
    return siga_l(_navigation);
  }
}

class siga_l extends State<siga> {
  List<String> _st = ["O", "O", "O", "", "", "", "X", "X", "X"];
  bool _click = true;
  int last = -1;
  List<int> _o = [-1, -1, -1, -1, -1, -1, -1, -1, -1],
      _x = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
  late BuildContext _contextdailog1;
  int _tx = 0, _to = 0;
  late Widget _navigation;

  siga_l(Widget n) {
    _navigation = n;
  }

  void _r_o(int old_c, int c) {
    _o[_o.indexOf(old_c) == -1 ? _o.indexOf(-1) : _o.indexOf(old_c)] = c;
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
      _st = ["O", "O", "O", "", "", "", "X", "X", "X"];
      _o = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
      _x = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
    });
    Navigator.of(_contextdailog1).pop();
  }

  void _stop_game(String winner) {
    Toastan().show_unusual(winner + " is winner", context);
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

  void _r_x(int old_c, int c) {
    _x[_x.indexOf(old_c) == -1 ? _x.indexOf(-1) : _x.indexOf(old_c)] = c;
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
      appBar: AppBar(
        title: Text("Siga"),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                        onPressed: () {
                          if (_click) {
                            if (_st[index] == "X") {
                              last = index;
                            } else if (last != -1&&_st[index] != "O") {
                              setState(() {
                                _st[index] = "X";
                                _st[last] = "";
                                _r_x(last, index);
                              });
                              last = -1;
                              _click = false;
                            }
                          } else {
                            if (_st[index] == "O") {
                              last = index;
                            } else if (last != -1&&_st[index] != "X") {
                              setState(() {
                                _st[index] = "O";
                                _st[last] = "";
                                _r_o(last, index);
                              });
                              last = -1;
                              _click = true;
                            }
                          }

                          //  _enable[index] = false;
                        },
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
