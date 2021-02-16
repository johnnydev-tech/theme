import 'package:flutter/material.dart';
import 'package:theme/global_state_theme.dart';
import 'home.dart';

void main() {
  runApp(AnimatedBuilder(
    animation: ChangeTheme.instance,
    builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            brightness: ChangeTheme.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light),
        debugShowCheckedModeBanner: false,
        home: Home(),
      );
    },
  ));
}
