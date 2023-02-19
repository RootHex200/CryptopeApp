import 'package:cryptope/utils/colors.dart';
import 'package:flutter/material.dart';

List data = [
  "Party",
  "Rock",
  "Helloween",
];

class EventContent extends StatelessWidget {
  const EventContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        margin: const EdgeInsets.only(top: 370, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "4    :  ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Date",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 18),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                  // const Text(
                  //   ":",
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 25),
                  // ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "23    :  ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Hours",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "18",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Minutes",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 19),
                    decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(18)),
                    child: Text(
                      data[index],
                      style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.calendar_month,
                    color: AppColors.primary,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Friday, 23 October 2020",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 19),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.vvLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.hello ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 17)),
              Text(
                  "amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.vvLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.hello ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 17)),
            ],
          ),
        ),
      ),
    );
  }
}
