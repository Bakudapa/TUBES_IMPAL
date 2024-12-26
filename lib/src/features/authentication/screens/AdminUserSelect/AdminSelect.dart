import 'package:flutter/material.dart';

void main() => runApp(UserManagementApp());

class UserManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: UserList(),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  final List<Map<String, String>> users = [
    {"name": "Matthew Wilson", "avatarUrl": "https://via.placeholder.com/150"},
    {"name": "Christopher Brown", "avatarUrl": "https://via.placeholder.com/150"},
    {"name": "David Smith", "avatarUrl": "https://via.placeholder.com/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "User Management",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),


        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
        ),


        Expanded(
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user['avatarUrl']!),
                ),
                title: Text(
                  user['name']!,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              );
            },
          ),
        ),
      ],
    );
  }
}
