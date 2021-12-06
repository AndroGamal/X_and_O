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
 this is a buttom is show X and o and this is go to page game X&O
 
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


#this page to play X and O.

 <image src="screen%20shot/1638817691306.jpg" width=400 height=800>

 
