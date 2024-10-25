import 'package:flutter/material.dart';

class Homes extends StatelessWidget {
  const Homes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgimage4.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton(context, Icons.person, "Home"),
                _buildButton(context, Icons.meeting_room_outlined, "Experience"),
                _buildButton(context, Icons.book_outlined, "Academic"),
                _buildButton(context, Icons.star_border_outlined, "Hobbies"),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              _displayBottomSheet(context, label);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.6),
              iconColor: Colors.white,
              minimumSize: Size(30, 60),
            ),
            child: Icon(icon),
          ),
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),
        ),
      ],
    );
  }

  Future _displayBottomSheet(BuildContext context, String title) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 400,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color:Colors.white.withOpacity(0.7),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              
            ],
          ),
        );
      },
    );
  }
}