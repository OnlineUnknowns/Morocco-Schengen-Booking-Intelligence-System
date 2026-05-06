import 'package:flutter/material.dart';

void main() {
  runApp(BLSApp());
}

class BLSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLS Booking',
      home: BookingPage(),
    );
  }
}

class BookingPage extends StatelessWidget {
  final List<String> slots = [
    "10 June - 09:00",
    "11 June - 11:00"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Appointment"),
      ),
      body: ListView.builder(
        itemCount: slots.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(slots[index]),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text("Book"),
            ),
          );
        },
      ),
    );
  }
}