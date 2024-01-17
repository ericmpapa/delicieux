import 'package:flutter/material.dart';

class DelicieuxSearchField extends StatelessWidget {
  @override
  Widget build(Object context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          fillColor: Colors.white,
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.grey),
    );
  }
}
