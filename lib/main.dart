import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Kanit'),
    home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/water.jpg"), 
          fit: BoxFit.cover,  // ปรับขนาดภาพให้เต็มพื้นที่
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken) // ปรับความมืดของภาพพื้นหลังให้มืดลง
          ),
        ),
    child: Scaffold(
          backgroundColor: Colors.transparent, // ทำให้ Scaffold มีพื้นหลังโปร่งใส
          appBar: AppBar(title: const Text("My Personal Profile",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white ),), 
          backgroundColor: Colors.blueAccent,
          centerTitle: true,  // กำหนดให้ข้อความอยู่ตรงกลางของ AppBar
          ),
    body: Column( children: [
           const SizedBox(height: 50), // เว้นระยะห่างด้านบน
           CircleAvatar(backgroundImage: AssetImage("assets/image/profile.jpg") ,
           radius: 100,
          ),
          const SizedBox(height: 40), // เว้นระยะห่างระหว่างรูปโปรไฟล์และข้อความ
          const ListTile(
            title: Text("Name: Waritthon Santikarn", style: TextStyle(fontSize: 16, color: Colors.white,)
            ),
            leading: Icon(
               Icons.person, color: Colors.lightGreen, size: 30), // ไอคอนสำหรับชื่อ
          ),
          const ListTile(
            title: Text("Date of birth: Feb 20, 2005", style: TextStyle(fontSize: 16, color: Colors.white,)
            ),
            leading: Icon(
               Icons.cake, color: Colors.pinkAccent, size: 30), // ไอคอนสำหรับชื่อ
          ),
          const ListTile(
            title: Text("Education: Kasetsart University, Information Technology(IT)", style: TextStyle(fontSize: 16, color: Colors.white,)
            ),
            leading: Icon(
               Icons.school, color: Colors.lightBlueAccent, size: 30), // ไอคอนสำหรับชื่อ
          ),
          const ListTile(
            title: Text("Address: 16/59, Ban Pong, Ratchaburi, 70110", style: TextStyle(fontSize: 16, color: Colors.white,)
            ),
            leading: Icon(
               Icons.location_on, color: Colors.yellowAccent, size: 30), // ไอคอนสำหรับชื่อ
          ),
          const ListTile(
            title: Text("Phone: 0616641928", style: TextStyle(fontSize: 16, color: Colors.white,)
            ),
            leading: Icon(
               Icons.phone, color: Colors.lightGreenAccent, size: 30), // ไอคอนสำหรับชื่อ
          ),
          const ListTile(
            title: Text("Email: waritthon.sa@ku.th", style: TextStyle(fontSize: 16, color: Colors.white,)
            ),
            leading: Icon(
               Icons.email, color: Colors.white, size: 30), // ไอคอนสำหรับชื่อ
          ),
        ])),
    ));
  }
}