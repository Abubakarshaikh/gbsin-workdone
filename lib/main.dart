import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/views/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      home: Signin(),
      // home: Forget(),
      // home: Signup(),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/signup", page: () => Signup()),
        GetPage(name: "/login", page: () => Signin()),
        GetPage(name: "/forget", page: () => Forget()),
      ],
    );
  }
}
