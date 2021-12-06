# x_and_o

A new Flutter project.

this project is Game (X and O) and (Siga).

#this page to select what Game do you want play.

<image src="screen%20shot/1638818230083.jpg" width=400 height=800>

this code is show this page
 
 this is the appbar that show in top app and put icon game.png inside.
 
     return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Image.asset(
              "assets/image/game.png",
              width: 30,
              height: 30,
                 color: Colors.deepPurple,
            ),
            Text("Games")
          ],
        )),
  this is body that is wadget show inside app.
 
 this is a buttom is show X and o and this is go to page game X&O
 
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Padding( padding: EdgeInsets.all(10.0)),
              FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: xo,
                  child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/x_o.png",
                            width: 200,
                            height: 150,
                          ),
                          Text("X and O")
                        ],
                      ))),
 this is a buttom is show Sega and this is go to page game Siga
 
                      Padding( padding: EdgeInsets.all(10.0)),
              FlatButton(
                  onPressed: sig,
                  child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/sega.png",
                            width: 200,
                            height: 150,
                          ),
                          Text("Siga")
                        ],
                      ))),Padding( padding: EdgeInsets.all(10.0))
            ]))));

this code to build page XandO game.
 
    void xo() {
        Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new StatefulBuilder(
             builder: (BuildContext context, setState) => x_o(_navigation))));
             }
 
 this code to build page XandO game.
 
      void sig() {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => new StatefulBuilder(
                 builder: (BuildContext context, setState) => siga(_navigation))));
               }
 
#this page to play X and O.

 <image src="screen%20shot/1638817691306.jpg" width=400 height=800>
 
        Scaffold(
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
 
 this code to chick if X is winner , this code chick 8 way to win.
  
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

 this code is to chick if O is wenner , this code chick 8 way to win. 
  
      
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
  
  this code to stop game and show who is winner.
  
   <image src="screen%20shot/1638823512346.jpg" width=400 height=800>
  
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
    
    
this is page to Sega game.
    
<image src="screen%20shot/1638817691297.jpg" width=400 height=800>
     
this code to page Sega game.
     
         Scaffold(
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
