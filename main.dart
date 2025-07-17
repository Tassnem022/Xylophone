import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Xylophone.dart';
import 'HomePage.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((value) =>  runApp(const HomePage()));
}

