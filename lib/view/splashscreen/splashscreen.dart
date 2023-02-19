import 'package:cryptope/controller/toggle_login_and_signup/toggle_login_and_signup.dart';
import 'package:cryptope/view/splashscreen/page1.dart';
import 'package:cryptope/view/splashscreen/page2.dart';
import 'package:cryptope/view/splashscreen/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 13,
            child: Stack(
              children: [
                PageView(
                  controller: pageController,
                  children: const [page1(), page2(), page3()],
                ),
                Positioned(
                    left: MediaQuery.of(context).size.width / 2.21112,
                    top: MediaQuery.of(context).size.height / 1.155555,
                    bottom: 100,
                    child: SmoothPageIndicator(
                        effect: const JumpingDotEffect(
                          activeDotColor: Colors.amber,
                          dotHeight: 9,
                          dotWidth: 9,
                          verticalOffset: 5,
                        ),
                        controller: pageController,
                        count: 3))
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 250,
                            child: Consumer(
                              builder: (context, ref, child) {
                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      ref.watch(toggle_login_and_signup)
                                          ? "Welcome To Back!!"
                                          : "Welcome To Cryptope",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      ref.watch(toggle_login_and_signup)
                                          ? "Please login to your account to continue"
                                          : "Lets Create Account",
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            "assets/images/social_media_logo.png")
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          ref.watch(toggle_login_and_signup)
                                              ? "Dont have an Account?"
                                              : "Already have An Account?",
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            ref
                                                    .read(
                                                        toggle_login_and_signup
                                                            .notifier)
                                                    .state =
                                                !ref
                                                    .read(
                                                        toggle_login_and_signup
                                                            .notifier)
                                                    .state;
                                          },
                                          child: SizedBox(
                                            height: 30,
                                            width: 60,
                                            child: Center(
                                              child: Text(
                                                ref.watch(
                                                        toggle_login_and_signup)
                                                    ? " Sign up"
                                                    : " login in",
                                                style: const TextStyle(
                                                    color: Colors.deepPurple,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: const SizedBox(
                      height: 18,
                      width: 60,
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
