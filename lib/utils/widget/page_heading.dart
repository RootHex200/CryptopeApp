import 'package:cryptope/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageHeading extends StatelessWidget {
  final String title;
  const PageHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        color: AppColors.primary,
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                title,
                style: const TextStyle(
                    color: AppColors.secondary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}
