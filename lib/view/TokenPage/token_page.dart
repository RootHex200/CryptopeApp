import 'package:cryptope/utils/colors.dart';
import 'package:cryptope/utils/widget/page_heading.dart';
import 'package:cryptope/view/TokenPage/component/token_list_item.dart';
import 'package:flutter/material.dart';

class TokenPage extends StatelessWidget {
  const TokenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PageHeading(title: "Tokens"),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const TokenListItem();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
