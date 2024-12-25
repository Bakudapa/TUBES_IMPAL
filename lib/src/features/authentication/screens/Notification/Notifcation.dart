import 'package:flutter/material.dart';
import '../Current Task/CurrentTask.dart';
import '../History/History.dart';

class NotificationPage extends StatelessWidget {

  final List<Map<String, String>> notifications = [
    {
      'type': 'Drugs',
      'title': 'Anda telah mengatur alarm',
      'description': 'Minum obat Paracetamol',
      'date': '25/12/2024',
      'time': '08:00 AM',
    },
    {
      'type': 'System',
      'title': 'Maintenance Update',
      'description': 'Sistem akan diperbarui pada 27/12/2024',
      'date': '25/12/2024',
      'time': '10:00 AM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CurrentTaskPage()),
              );
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('images/img.png'),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return NotificationCard(
              type: notification['type']!,
              title: notification['title']!,
              description: notification['description']!,
              date: notification['date']!,
              time: notification['time']!,
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.withOpacity(0.7),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Currenttask()),
                );
              },
              child: Icon(Icons.article),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              child: Icon(Icons.message),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
              child: Icon(Icons.access_time),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String type;
  final String title;
  final String description;
  final String date;
  final String time;

  const NotificationCard({
    Key? key,
    required this.type,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: type == 'Drugs' ? Colors.green : Colors.orange,
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(description),
            SizedBox(height: 8),
            Text(
              "$date, $time",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
