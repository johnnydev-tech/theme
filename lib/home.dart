import 'package:flutter/material.dart';
import 'package:theme/global_state_theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alterar Tema"),
      ),
      body: Center(
        child: Switch(
          value: ChangeTheme.instance.isDartTheme,
          onChanged:(value){
            ChangeTheme.instance.changeTheme();
          }
        ),
      ),
    );
  }
}
