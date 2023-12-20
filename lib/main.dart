import 'package:flutter/material.dart';

import 'home_page/home_page.dart';

void main(){
  //run ไปที่ MyApp
  runApp(const MyApp());
}
//MyApp คือ class แรกสุดสำหรับให้กำเนิดตัวหน้าจอ App
//MyApp เป็น stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //สร้าง Material
    return MaterialApp(
      title: 'Good Health Good Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
