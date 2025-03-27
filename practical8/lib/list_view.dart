import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'name': 'Vivek Kumar', 'contactNumber': '+12345670123'},
    {'name': 'Suraj Thakur', 'contactNumber': '+12345671234'},
    {'name': 'Ashish Kumar', 'contactNumber': '+12345672345'},
    {'name': 'Charmi Vora', 'contactNumber': '+12345673456'},
    {'name': 'Saurabh Kumar', 'contactNumber': '+12345674567'},
    {'name': 'Abhinav Mistra', 'contactNumber': '+12345675678'},
    {'name': 'Aman Yadav', 'contactNumber': '+12345676789'},
    {'name': 'Raj Lakkad', 'contactNumber': '+12345677890'},
    {'name': 'Digesh Suvagiya', 'contactNumber': '+12345678901'},
    {'name': 'Sandeep Dalsaniya', 'contactNumber': '+12345679012'},
    {'name': 'Yash Gandhi', 'contactNumber': '+12345671234'},
    {'name': 'Abhay Gadara', 'contactNumber': '+12345672345'},
    {'name': 'Shubham Dalsaniya', 'contactNumber': '+12345673456'},
    {'name': 'Jay Mer', 'contactNumber': '+12345674567'},
    {'name': 'Sandeep Chuhan', 'contactNumber': '+12345675678'},
    {'name': 'Yash Kanani', 'contactNumber': '+12345676789'},
    {'name': 'Deep Sanghani', 'contactNumber': '+12345677890'},
    {'name': 'Haresh Godhani', 'contactNumber': '+12345678901'},
    {'name': 'Jasmin Virmgama', 'contactNumber': '+12345679012'},
    {'name': 'Deep Boda', 'contactNumber': '+12345671234'},
    {'name': 'Rutvik Dalsaniya', 'contactNumber': '+12345672345'},
    {'name': 'Prit Jogani', 'contactNumber': '+12345673456'},
    {'name': 'Harshad Vanaliya', 'contactNumber': '+12345674567'},
    {'name': 'Raj Padaliya', 'contactNumber': '+12345675678'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Contact List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange, 
              child: Text(
                item['name']![0].toUpperCase(),
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(item['name']!),
            subtitle: Text('Contact: ${item['contactNumber']}'),
          );
        },
      ),
    );
  }
}
