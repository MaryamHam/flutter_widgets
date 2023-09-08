import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  debugShowCheckedModeBanner: false,
home: Scaffold(

  appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 21, 8, 167),
    title: Text("Posts",
    style: TextStyle(fontSize: 20,color: Colors.white),) ,
 ),
 drawer: Drawer(
  width: 300,
  child:  Column(
    children: [
    SizedBox(
      width: 300,
      
      child: Container(
        width: 300,
        color: const Color.fromARGB(255, 198, 185, 147),
        child: DrawerHeader(
          child: Column(
          children: [CircleAvatar( backgroundImage: AssetImage("assets/img.jpg")),
          SizedBox(height: 10,),
          Text("Maryam AlGharibi")],
          
        ),
        
        ),
      ),
    ),

    ListTile(
      title: Text("Home"),
      leading: Icon(Icons.home),
    ),
     ListTile(
      title: Text("settings"),
      leading: Icon(Icons.settings),
    ),
     ListTile(
      title: Text("comment"),
      leading: Icon(Icons.comment),
    ),
     ListTile(
      title: Text("Contact"),
      leading: Icon(Icons.contact_emergency),
    ),
    
    ],
  ),
 ),


body:Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [Container(
      width: 300,
      height: 60,
        child: InkWell(onTap: (){
          print("Image");

        },
        child: Image.asset("assets/img.jpg",width: 100, height: 100,),
        ),
            ),

            Container(
      width: 300,
      height: 60,
      //GestureDetector widget
      child: GestureDetector(onTap: (){
        print("Image");

      },
      child: Image.asset("assets/ima.jpg",width: 50, height: 50,),
      ),
            ),

     Container(
      width: 300,
      height: 60,

        child: MaterialButton(onPressed: (){},
        child: Text("Click Here"),
        color: Color.fromARGB(255, 64, 96, 225),
        textColor: Colors.white,
        minWidth: 400,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        ),

   Container(
      width: 300,
      height: 60,

       child: ElevatedButton(onPressed: () {
       }, child: Text("Click Here"), style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 24, 83, 201)),
       ) ),
            ),
  
    ],
  ),)




















),);
  }
}