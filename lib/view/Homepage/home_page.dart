import 'package:cryptope/utils/colors.dart';
import 'package:cryptope/utils/widget/name_view.dart';
import 'package:cryptope/utils/widget/page_heading.dart';
import 'package:cryptope/view/Homepage/component/event_list_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PageHeading(title: "Events"),
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
                //upcoming event
                    const SizedBox(
                      height: 20,
                    ),
                const NameView(name: "Upcoming Events"),

                //list of upcoming event
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const EventListItem();
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
