import 'package:flutter/material.dart';
// import 'device.dart';
import 'container.dart';
class Device {

  late String name;
  late IconData icon;
  late List<bool> power;


  Device(String name, IconData icon){
    this.name = name;
    this.icon = icon;
    this.power = [false];

  }

}
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Device> devices = [
    Device("CV camera", Icons.add_a_photo),
    Device("Television", Icons.tv),
    Device("Computer", Icons.computer),
    Device("Xbox", Icons.sports_esports),
    Device("Air Condition 1", Icons.ac_unit),
    Device("Air Condition 2", Icons.ac_unit),


  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('                                  IOT'),
          backgroundColor: Colors.lightGreen,

        ),
        body: Container(
          color: Colors.grey[100] ,
          padding: EdgeInsets.fromLTRB(10, 15, 15, 10),

          child: GridView.count(
            childAspectRatio: (1.9/1.7),
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 20.0,
            children: devices.map((device) {
              return DeviceContainer(device);
            }).toList(),
          ),
        ),
      ),
    );
  }
}