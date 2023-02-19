import 'package:cryptope/utils/colors.dart';
import 'package:cryptope/view/Homepage/component/event_list_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                    "Events",
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
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //upcoming event

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Upcoming Event',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Container()),
                        Text(
                          'View all',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

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
        ),
      ],
    );
  }
}
