import 'package:cryptope/utils/colors.dart';
import 'package:cryptope/view/TokenPage/component/token_list_item.dart';
import 'package:flutter/material.dart';

class TokenPage extends StatelessWidget {
  const TokenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            color: AppColors.primary,
            child: const Padding(
              padding: EdgeInsets.only(top: 60),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Tokens",
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children:  [
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
        ),
      ],
    );
  }
}
