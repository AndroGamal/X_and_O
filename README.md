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
 
  
