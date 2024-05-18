import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ПРОФИЛЬ',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/me.png'),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ЭТОЯ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Абонемент активен до 25 мая',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          // primary: Colors.blue,
                          ),
                      child: Text('КУПИТЬ'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'БЛИЖАЙШИЕ ТРЕНИРОВКИ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: [
                  TrainingSessionCard(
                      date: '13 МАЯ', title: 'ABS', time: '16:00-17:00'),
                  TrainingSessionCard(
                      date: '14 МАЯ', title: 'MEGAHARD', time: '18:00-19:00'),
                  TrainingSessionCard(
                      date: '15 МАЯ', title: 'ЧИЛЛ', time: '15:00-16:00'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // primary: Colors.grey,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('АРХИВ ТРЕНИРОВОК'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

class TrainingSessionCard extends StatelessWidget {
  final String date;
  final String title;
  final String time;

  TrainingSessionCard(
      {required this.date, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Text(
          date,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          time,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
