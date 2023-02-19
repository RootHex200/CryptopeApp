import 'package:cryptope/view/TokenDetailsPage/token_details_page.dart';
import 'package:flutter/material.dart';

class TokenListItem extends StatelessWidget {
  const TokenListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TokenDetailsPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 1)
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/crypto.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                'Helix pro',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 12.0, bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const Text(
            //         'Event Name',
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold),
            //       ),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       const Text(
            //         'Event Date',
            //         style: TextStyle(
            //             color: AppColors.primary,
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold),
            //       ),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         'lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
            //         style: TextStyle(
            //           color: Colors.grey.shade700,
            //           fontSize: 14,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
