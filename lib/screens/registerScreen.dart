import 'package:flutter/material.dart';

class registerScreen extends StatelessWidget {
  const registerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Здесь регистрируемся'),
      ),
      body: Center(
        child: Text('Ну привет, ты регистрируешься здесь'),
      ),
    );
  }
}