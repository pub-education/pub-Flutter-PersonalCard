import 'package:flutter/material.dart';

Container contactSection(Color color) {
  return Container(
    margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 209, 232, 248),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 0.5,
          spreadRadius: 1.0,
          offset: Offset(1.0, 2.0),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Former Musical Director P&O Cruises',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
            textDirection: TextDirection.ltr,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: _buildContactRow(
                'Email', 'chris@chrisjohannesson.com', Icons.email, color),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: _buildContactRow(
                'Phone', '+46 (0)79 332 6745', Icons.phone, color),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: _buildContactRow(
                'Website', 'https://chrisjohannesson.com', Icons.web, color),
          ),
        ],
      ),
    ),
  );
}

Row _buildContactRow(String label, String value, IconData icon, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(right: 10.0),
        child: Icon(
          icon,
          color: color,
          size: 16.0,
        ),
      ),
      Text(
        '$label: ',
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      Text(
        value,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14.0,
        ),
      ),
    ],
  );
}
