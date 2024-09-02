import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'HUMMING\nBIRD .',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SKILL UP NOW',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'TAP HERE',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade400,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text('Episodes'),
                leading: Icon(Icons.video_settings_rounded),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.info_sharp),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB.\nTHE BASICS",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'In this course we will go over the basics of using Flutter Web for Development. Topics will include Responsive Layout, Deploying, font changes, Hover functionality, Modals and more.',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Join Course'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ],
          ),
        ),
      ),
      tablet: Scaffold(
        appBar: AppBar(
          toolbarHeight: 140,
          title: Text('HUMMING\nBIRD',style: TextStyle(fontSize: 30),),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Episodes',
                  style: TextStyle(color: Colors.black,fontSize: 25),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.black,fontSize: 25),
                )),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER WEB.\nTHE BASICS",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'In this course we will go over the basics of using Flutter Web for Development. Topics will include Responsive Layout, Deploying, font changes, Hover functionality, Modals and more.',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Join Course',style: TextStyle(fontSize: 25),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal:80,vertical: 20),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ],
          ),
        ),
      ),
      desktop: Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
            title: Text('HUMMING\nBIRD',style: TextStyle(fontSize: 35),),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Episodes',
                    style: TextStyle(color: Colors.black,fontSize: 25),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'About',
                    style: TextStyle(color: Colors.black,fontSize: 25),
                  )),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(150.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FLUTTER WEB.\nTHE BASICS",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5),
                        ),
                        Text(
                          'In this course we will go over the basics of using Flutter Web for Development. Topics will include Responsive Layout, Deploying, font changes, Hover functionality, Modals and more.',
                          style: TextStyle(fontSize: 28),
                        )
                      ],
                    )),
                SizedBox(
                  width: 40,
                ),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Join Course',style: TextStyle(fontSize: 23),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                ))
              ],
            ),
          )),
    );
  }
}
