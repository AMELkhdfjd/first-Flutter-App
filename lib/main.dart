// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_print, camel_case_types, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(  AmelApp());
}


String english = "Salut Amel !";
String spanish = "Salut Hocine heey";
@override
class AmelApp extends StatelessWidget{


  //Dephault greeting is in english
String displaytext = english;
@override
Widget build(BuildContext context){
  return MaterialApp (
    debugShowCheckedModeBanner: false,
    //! The difference between the global and local theme is :
    //! the global : we use theme: ThemeData()
    //! the local : we use child : Theme(.....) then add child: ProfileActionItems(),

   
    theme : MyAppTheme.apptheme(),
    home: Scaffold(
      appBar: AppBar(
       
          title: Text("hello flutter app"),
          leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          ),
        actions : <Widget>[
          IconButton(
         
             icon: Icon(Icons.star),
                onPressed: (){
                 
                   print("the contact is starred");
                
                },
          )
        ],
        
        ),
      body: ListView(
        //listView has multiple children widget
      children : <Widget>[
        //use column widget to align widgets vertically
        //Setting the width property to double.infinity, will make it stretch horizontally to take up all the available space of its parent widget.
        Column(
          children : <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                fit: BoxFit.cover,
              ),

            ),
               
              Container(
             
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  <Widget>[
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Text(
                      "Priyanka Tyagi",
                      style: TextStyle(fontSize: 30),
                   ),
                  )
                 
                ],
                )
               
              ),
              
              Container( //? the theme here is not working
                margin: const EdgeInsets.only(top: 8, bottom : 8),
                child : Theme(
                  data: ThemeData(
                    iconTheme : IconThemeData(
                     color: Colors.yellow,
                    ),
                  ),
                  

                
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildCallButton(),
                    buildTextButton(),
                    buildVideoCallButton(), 
                    buildEmailButton(),
                    buildDirectionButton(),
                    buildPayButton(),

                ],

                ),
                ),

              ),

              //Adding the divider to separate sections
              Divider(
                color: Colors.grey,

              ),
            MobilePhoneListTile(),
            otherPhoneListTile(),
               Divider(
                color: Colors.grey,

              ),
              EmailListTile(),
               Divider(
                color: Colors.grey,

              ),
             AdressListTile(),
              Divider(
                color: Colors.red

              ),

           ],
        
        )
      ],
      ),
       
      ),
    
    );



}




}
Widget buildCallButton(){
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          //! don't add this when we have the .message "Icons.call,"
         Icons.call,
          color:Colors.indigo.shade800,
          ),
          onPressed:(){}
          ),
          Text("Call"),
    ],
  );
}
//*Adding the buildTextButton
Widget buildTextButton(){

  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          //! don't add this when we have the .message "Icons.call,"
         Icons.message,
          color:Colors.indigo.shade800,
          ),
          onPressed:(){}
          ),
          Text("Text"),
    ],
  );
}

//*Adding the buildVideoCallButton
Widget buildVideoCallButton(){
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
         
         Icons.video_call,
          color:Colors.indigo.shade800,
          ),
          onPressed:(){}
          ),
          Text("Video"),
    ],
  );
}

//*Adding the buildEmailButton
Widget buildEmailButton(){
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
         
         Icons.email,
          color:Colors.indigo.shade800,
          ),
          onPressed:(){}
          ),
          Text("Email"),
    ],
  );
}

//*Adding the buildDirectionButton
Widget buildDirectionButton(){
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
         
         Icons.directions,
          color:Colors.indigo.shade800,
          ),
          onPressed:(){}
          ),
          Text("Directions"),
    ],
  );
}

//*Adding the buildPayButton
Widget buildPayButton(){
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
         
         Icons.attach_money,
          color:Colors.indigo.shade800,
          ),
          onPressed:(){}
          ),
          Text("Pay"),
    ],
  );
}

//*the phone list number
Widget otherPhoneListTile(){
  return ListTile(
    leading: Text(""),
    title: Text("0727297398"),
    subtitle: Text("other"),
    trailing: IconButton(
      onPressed: (){},
       icon: Icon(Icons.message),
       color: Colors.indigo.shade500,
       )
  );
}

Widget MobilePhoneListTile(){
  return ListTile(
    leading: Icon(Icons.call),
    title: Text("0727297398"),
    subtitle: Text("Mobile"),
    trailing: IconButton(
      onPressed: (){},
       icon: Icon(Icons.message),
       color: Colors.indigo.shade500,
       )
  );
}

Widget EmailListTile(){
  return ListTile(
    leading: Icon(Icons.email),
    title: Text("jsoenvfi@gmail.com"),
    subtitle: Text("Work"),
   
  );
}
Widget AdressListTile(){
  return ListTile(
    leading: Icon(Icons.location_on),
    title: Text("234 Su,set St, Burlingame"),
    subtitle: Text("Home"),
    trailing: IconButton(
      onPressed: (){},
       icon: Icon(Icons.message),
       color: Colors.indigo.shade500,
       )
  );
}
//*Adding the theme of the body
class MyAppTheme{
  static ThemeData apptheme(){
  
    return ThemeData(
       //NEW CODE: theme property to set the global theme
      
        // Define the default brightness and colors for the overall app.
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          //CHALLENGE: Try a different color
           backgroundColor: Colors.purple,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
       iconTheme: IconThemeData(
       color: Colors.orange,
     ),
    
    
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
