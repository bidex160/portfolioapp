import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Portfolio App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _currentIndex =0;
 List<dynamic> _body = [AboutMe(), Projects()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _body[_currentIndex],

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
          label: "About" ,
           ),
        BottomNavigationBarItem(
          icon: Icon(Icons.filter),
          label: "Projects" ,
        )
      ],
      selectedLabelStyle: TextStyle(
        color: Colors.teal,

      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white
      ),
      onTap: _onTap,
    ),
    );
  }

  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });

  }
}

 class AboutMe extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black,
      child: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(),
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/error.jpg')
                )
              ),
            ),
       SizedBox(height: 50,),
            Text(
              'Tajudeen Wariz',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                  color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            ),
            Text(
              'Adroid.Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w200
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  color: Colors.black,
                  child: Row(
                    children: [
                      Image.asset('images/facebook-logo.png'),
                      SizedBox(width: 10,),
                      Text("Facebook", style: TextStyle(
                        color: Colors.white
                      ),)

                    ],

                  ),
                ),
                Container(

                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                          child: Image.asset('images/github.png')),
                      SizedBox(width: 10,),
                      Text("Github", style: TextStyle(
                          color: Colors.white
                      ),)

                    ],

                  ),
                ),
                Container(

                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        height:30,
                          child: Image.asset('images/twitter.png')),
                      SizedBox(width: 10,),
                      Text("Twitter", style: TextStyle(
                          color: Colors.white
                      ),)

                    ],

                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }




}
class Projects extends StatelessWidget {
  Widget portfolioItems(String image, String title, String description){
    return Card(
      elevation: 5,

      child: Container(

        color: Colors.black,
        child: ListTile(
          leading: Container(
            width: 100,
              child: Image.asset('$image')),
          title: Text("$title", style: TextStyle(
            fontSize: 27,
            color: Colors.black
          ),),
          subtitle: Text("$description",style: TextStyle(

              color: Colors.black
          ), ),
          tileColor: Colors.white,

        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.black,
      child: Column(

        children: [
          SizedBox(height: 15,),
          portfolioItems("images/portfo.jpg","Portfolio app",
              "A basic Portfolio app that displays your name, "
                  "A short description of yourself and any other detail to fill out your application."),
          SizedBox(height: 15,),
          portfolioItems("images/bank.jpeg","A console bank",
              " A user should be able to deposit, withdraw and view their account balance."),
          SizedBox(height: 15,),
          portfolioItems("images/function.png","Functions",
              "Define functions that carry out the following..."),
          SizedBox(height: 15,),
          portfolioItems("images/error.jpg","Fix overflow error ",
              "you were expected to fix an overflow error."),
          SizedBox(height: 15,),
          portfolioItems("images/control.png","Control flow",
              "A clear guide on the other statement types not discussed in the live class"),
        ],
      ),
    );
  }




}