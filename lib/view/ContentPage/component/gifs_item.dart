import 'package:flutter/material.dart';

class GifsItem extends StatelessWidget {
  const GifsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(left: 20),
            width: 220,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/crypto.png')),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.download_rounded),
                    Text(
                      'Download',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
