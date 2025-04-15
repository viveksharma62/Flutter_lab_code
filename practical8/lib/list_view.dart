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
    {'name': 'sahil kumar', 'contactNumber': '+12345677890'},
    {'name': 'samar sharma', 'contactNumber': '+12345678901'},
    {'name': 'nawnit kumar', 'contactNumber': '+12345679012'},
    {'name': 'vishwjeet yadav', 'contactNumber': '+12345671234'},
    {'name': 'kabir kumar', 'contactNumber': '+12345672345'},
    {'name': 'subham kumar', 'contactNumber': '+12345673456'},
    {'name': 'rahul kumar', 'contactNumber': '+12345674567'},
    {'name': 'prince kumar', 'contactNumber': '+12345675678'},
    {'name': 'yash kumar', 'contactNumber': '+12345676789'},
    {'name': 'deepak kumar', 'contactNumber': '+12345677890'},
    {'name': 'gulshan kumar', 'contactNumber': '+12345678901'},
    {'name': 'ujjawal kumar', 'contactNumber': '+12345679012'},
    {'name': 'gurgesh kumar', 'contactNumber': '+12345671234'},
    {'name': 'sadab kumar', 'contactNumber': '+12345672345'},
    {'name': 'murari kumar', 'contactNumber': '+12345673456'},
    {'name': 'ankit sharma', 'contactNumber': '+12345674567'},
    {'name': 'ram kumar', 'contactNumber': '+12345675678'},
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
