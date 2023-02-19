import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NameView extends StatelessWidget {
  final String name;
  const NameView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          Text(
            'View all',
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
