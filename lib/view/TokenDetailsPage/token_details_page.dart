import 'package:cryptope/utils/colors.dart';
import 'package:flutter/material.dart';

class TokenDetailsPage extends StatelessWidget {
  const TokenDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: AppColors.secondary,
              ),
            ),
            Positioned(
              child: Container(
                height: 320,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/crypto.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 340),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Helix Pro",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "Market Cap",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "\$ 1000000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: const [
                            Text(
                              "CMP",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "\$2899",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Details about project",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.vvLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.hello ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 17)),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 50,
                          width: 140,
                         
                          decoration: BoxDecoration(
                              color: AppColors.secondary,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 10,
                                    spreadRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                             padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Image(
                                      image: AssetImage('assets/images/like.png'),
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Image(
                                      image:
                                          AssetImage('assets/images/dislike.png'),
                                    )),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
