import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget{
  const SettingsScreen({super.key});
  @override
  SettingsScreenState createState()=> SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen>{
  @override
  Widget build(BuildContext context){
    final appBar = AppBar(
      title: const Text('Configurações'),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(),
    );
  }
}