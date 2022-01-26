import 'package:flutter/material.dart';
import 'package:hostfire0123/sections/recent_work/datail_page/ditailpage.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;
  final Function pressed1;

  Service({required this.pressed1,required this.id, required this.title, required this.image, required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/graphic.png",
    color: Color(0xFFD9FFFC),
    pressed1: (context){
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => DitailPage()
      ));}

  ),
  Service(
    id: 2,
    title: "Web Design",
    image: "assets/images/desktop.png",
    color: Color(0xFFE4FFC7),
      pressed1: (){print('1');}
  ),
  Service(
    id: 3,
    title: "UI Design",
    image: "assets/images/ui.png",
    color: Color(0xFFFFF3DD),
      pressed1: (){print('1');}
  ),
  Service(
    id: 4,
    title: "Interaction Design",
    image: "assets/images/Intreaction_design.png",
    color: Color(0xFFFFE0E0),
      pressed1: (){print('1');}
  ),
];
