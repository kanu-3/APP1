import 'package:flutter/material.dart';
import 'package:task1/Spashscreen.dart'; 
import 'package:url_launcher/url_launcher.dart';
import 'package:task1/home.dart'; 


void main() {
  runApp(MaterialApp(
    home: Spashscreen(), 
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  final List<Color> colors = [
    const Color.fromARGB(255, 195, 126, 181),
    const Color.fromARGB(255, 33, 218, 206),
    const Color.fromARGB(255, 82, 127, 159),
    const Color.fromARGB(255, 141, 106, 211),
  ];

final List<String>text=[
  "Know my work",
  "About Me",
  "Where I am",
  "What do I do",
];

final List<IconData> icon=[
  Icons.work,
  Icons.card_membership,
  Icons.location_city_outlined,
  Icons.thumb_up,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homes()),);

              } ,
            ),
            ListTile(
              title: Text("Experience",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homes()),);
              } ,
            ),
            ListTile(
              title: Text("Academic",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homes()),);

              } ,
            ),
            ListTile(
              title: Text("Hobbies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Homes()),);

              } ,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgimagemain.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Kanishka Jha",
                style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "App Developer",
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
              Spacer(), 
              Container(
                height: 250, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.7),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Can I help you?", textAlign: TextAlign.left),
                                SizedBox(height: 10), 
                                Text("Let's work?", style: TextStyle(fontWeight: FontWeight.w800)),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              launch('tel:+919560627593');
                              //FlutterPhoneDirectCaller.callNumber('+919560627593');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                              child: Text(
                                "Contact Me",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5), 
                    Expanded(
                      child: PageView.builder(
                        itemCount: colors.length,
                        controller: PageController(viewportFraction: 0.5,initialPage: 1),
                        
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: colors[index].withOpacity(0.8),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  Icon(
                                    icon[index],color: Colors.white,size: 25,
                                  ),
                                  Text(
                                    text[index],style: TextStyle(fontSize: 25,color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), 
            ],
          ),
        ),
      ),
    );
  }
}
