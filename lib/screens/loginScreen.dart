import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 400,
                          width: 400,
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 120, left: 160),
                            child: Text(
                              'ВХОД',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 400, left: 50, right: 50),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.check),
                                label: Text(
                                  'Почтовый ящик',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TextField(
                              obscureText: true, // Для отображения звездочек
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility_off),
                                label: Text(
                                  'Пароль',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text('Забыли пароль?'),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              child: Text('ВОЙТИ'),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/register');
                              },
                              child: Text('ЗАРЕГИСТРИРОВАТЬСЯ'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
