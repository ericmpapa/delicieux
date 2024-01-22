import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class DelicieuxSearchField extends StatelessWidget {
  @override
  Widget build(Object context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: util.couleurBlanche, width: 0.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: util.couleurBordure, width: 0.0),
          ),
          fillColor: util.couleurBlanche,
          filled: true,
          hintText: "rechercher un plat",
          labelStyle: const TextStyle(color: util.couleurBordure),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: util.couleurBordure),
    );
  }
}
