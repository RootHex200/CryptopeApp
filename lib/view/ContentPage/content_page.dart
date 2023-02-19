import 'package:cryptope/utils/colors.dart';
import 'package:cryptope/utils/widget/name_view.dart';
import 'package:cryptope/utils/widget/page_heading.dart';
import 'package:cryptope/view/ContentPage/component/coins_item.dart';
import 'package:cryptope/view/ContentPage/component/gifs_item.dart';
import 'package:cryptope/view/ContentPage/component/news_item.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const PageHeading(title: "Content"),
          Positioned(
            child: Container(
              margin: const EdgeInsets.only(top: 100),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const NameView(name: "Gifs"),
                    SizedBox(
                        height: 220,
                        child: ListView.builder(
                            padding: const EdgeInsets.all(12),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return const GifsItem();
                            })),
                    const NameView(name: "News"),
                    SizedBox(
                      height: 225,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(12),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const NewsItem();
                        },
                      ),
                    ),
                    const NameView(name: "Coins"),
                    SizedBox(
                      height: 190,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(12),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const CoinsItem();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
