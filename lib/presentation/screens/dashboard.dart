import 'package:ecs_flutter_assesment/constants/app_extensions.dart';
import 'package:ecs_flutter_assesment/presentation/widgets/custom_appbar.dart';
import 'package:ecs_flutter_assesment/presentation/widgets/custom_button.dart';
import 'package:ecs_flutter_assesment/presentation/widgets/custom_spacing.dart';
import 'package:ecs_flutter_assesment/presentation/widgets/custom_stacked_column_chart.dart';
import 'package:ecs_flutter_assesment/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<InternationalOrLocalTabs> tabsList = [
    InternationalOrLocalTabs(label: "Today", isSelected: false),
    InternationalOrLocalTabs(label: "This Week", isSelected: true),
    InternationalOrLocalTabs(label: "This Month", isSelected: false),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabsList[1].isSelected = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSpacing(h: 0.04),

            ///AppBar
            const CustomAppBar(),

            ///Other content
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(context.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Organization Insights
                  const CustomText(
                    text: "Organization Insights",
                    textColor: Colors.black,
                    fontSize: 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                  //Track Your Organization Stats Insights
                  const CustomText(
                    text: "Track Your Organization Stats Insights",
                    textColor: Color(0xff475467),
                    fontSize: 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomSpacing(),
                  //manage Widgets
                  CustomButton(
                    buttonText: "manage Widgets",
                    onPress: () {},
                    hasIcon: true,
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                      weight: context.width * 0.01,
                    ),
                  ),
                  const CustomSpacing(),
                  Divider(
                    height: context.height * 0.01,
                  ),
                  const CustomSpacing(
                    h: 0.04,
                  ),
                  //Welcome Back, John!
                  buildCard(context),
                  const CustomSpacing(),
                  buildCardAttendanceSummary(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Card buildCard(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff1E5BD7),
          borderRadius: BorderRadius.circular(context.width * 0.02),
        ),
        // height: context.height * 0.65,
        width: context.width * 0.9,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(context.width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Welcome Back, John!
                          CustomText(
                            text: "Welcome Back, John!",
                            fontWeight: FontWeight.bold,
                          ),
                          //Take a Look At Our Weekly Reports
                          CustomText(
                            text: "Take a Look At Our Weekly Reports",
                            fontSize: 0.03,
                          ),
                        ],
                      ),
                      Image.asset('assets/icons/expand_icon.png')
                    ],
                  ),
                  const Divider(),
                  //Average Late & Overtime
                  const CustomText(
                    text: "Average Late & Overtime",
                    fontWeight: FontWeight.bold,
                  ),
                  const Divider(),
                  //25 Min 5 Hr 15 Min Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomText(
                                text: "25",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                              SizedBox(
                                width: context.width * 0.015,
                              ),
                              const CustomText(
                                text: "Min",
                                fontSize: 0.037,
                              ),
                            ],
                          ),
                          const CustomSpacing(),
                          //Avg. Lateness
                          const CustomText(
                            text: "Avg. Lateness",
                            fontSize: 0.035,
                          ),
                          const CustomSpacing(
                            h: 0.01,
                          ),
                          const ProgressContainer(
                            progressValue: "15%",
                            icon: Icons.arrow_downward,
                          ),
                        ],
                      ),
                      const Visibility(visible: false, child: Text('')),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomText(
                                text: "5",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                              SizedBox(
                                width: context.width * 0.015,
                              ),
                              const CustomText(
                                text: "Hr",
                                fontSize: 0.037,
                              ),
                              const CustomText(
                                text: "15",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                              SizedBox(
                                width: context.width * 0.015,
                              ),
                              const CustomText(
                                text: "Min",
                                fontSize: 0.037,
                              ),
                            ],
                          ),
                          const CustomSpacing(),
                          //Avg. Lateness
                          const CustomText(
                            text: "Avg. Overtime",
                            fontSize: 0.035,
                          ),
                          const CustomSpacing(
                            h: 0.01,
                          ),
                          const ProgressContainer(progressValue: "15%"),
                        ],
                      ),
                      const Visibility(visible: false, child: Text('')),
                    ],
                  ),
                  const CustomSpacing(),
                  //Payroll Finance
                  const CustomText(
                    text: "Payroll Finance",
                    fontWeight: FontWeight.bold,
                  ),
                  const Divider(),
                  //AED 43.20K
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomText(
                                text: "AED",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                              SizedBox(
                                width: context.width * 0.015,
                              ),
                              const CustomText(
                                text: "43.20K",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                            ],
                          ),
                          const CustomSpacing(),
                          //Avg. Lateness
                          const CustomText(
                            text: "Total Processed",
                            fontSize: 0.035,
                          ),
                          const CustomSpacing(
                            h: 0.01,
                          ),
                          const ProgressContainer(
                            progressValue: "15%",
                            icon: Icons.arrow_upward,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.width * 0.2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomText(
                                text: "AED",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                              SizedBox(
                                width: context.width * 0.015,
                              ),
                              const CustomText(
                                text: "105.40K",
                                fontWeight: FontWeight.bold,
                                fontSize: 0.05,
                              ),
                            ],
                          ),
                          const CustomSpacing(),
                          //Avg. Lateness
                          const CustomText(
                            text: "Avg. Overtime",
                            fontSize: 0.035,
                          ),
                          const CustomSpacing(
                            h: 0.01,
                          ),
                          const ProgressContainer(progressValue: "15%"),
                        ],
                      ),
                    ],
                  ),
                  const CustomSpacing(),
                  // Activity
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Activity",
                        fontWeight: FontWeight.bold,
                      ),
                      Visibility(visible: true, child: Text('')),
                      CustomText(
                        text: "Head Count",
                        fontWeight: FontWeight.bold,
                      ),
                      Visibility(visible: true, child: Text('')),
                    ],
                  ),
                  const Divider(),
                  //22
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "22",
                            fontWeight: FontWeight.bold,
                            fontSize: 0.05,
                          ),
                          SizedBox(
                            width: context.width * 0.15,
                            child: const CustomText(
                              text: "Avg. Leaves",
                              fontSize: 0.035,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "70",
                            fontWeight: FontWeight.bold,
                            fontSize: 0.05,
                          ),
                          SizedBox(
                            width: context.width * 0.2,
                            child: const CustomText(
                              text: "Avg. Attendance",
                              fontSize: 0.035,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: context.width * 0.08),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "1283",
                            fontWeight: FontWeight.bold,
                            fontSize: 0.05,
                          ),
                          SizedBox(
                            width: context.width * 0.2,
                            child: const CustomText(
                              text: "Total Employees",
                              fontSize: 0.035,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: "250",
                            fontWeight: FontWeight.bold,
                            fontSize: 0.05,
                          ),
                          SizedBox(
                            width: context.width * 0.2,
                            child: const CustomText(
                              text: "Total Internship",
                              fontSize: 0.035,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Image.asset('assets/icons/BG-Pattern.png')
          ],
        ),
      ),
    );
  }

  Card buildCardAttendanceSummary(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(context.width * 0.02)),
        width: context.width * 0.9,
        child: Container(
          padding: EdgeInsets.all(context.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Attendance Summary
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Attendance Summary",
                    fontWeight: FontWeight.bold,
                    textColor: Colors.black,
                    fontSize: 0.05,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  )
                ],
              ),

              ///Tabs
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(context.width * 0.02)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(tabsList.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          tabsList.forEach((element) {
                            element.isSelected = false;
                          });
                          tabsList[index].isSelected = true;
                        });
                      },
                      child: Container(
                          width: context.width * 0.27,
                          height: context.height * 0.05,
                          decoration: BoxDecoration(
                              color: tabsList[index].isSelected == true
                                  ? const Color(0xffD0D5DD)
                                  : Colors.white),
                          child: Center(
                            child: Text(
                              "${tabsList[index].label}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: tabsList[index].isSelected == true
                                      ? Colors.red
                                      : Colors.black,
                                  fontWeight: tabsList[index].isSelected == true
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          )),
                    );
                  }),
                ),
              ),
              const Divider(),

              ///Chart
              StackColumnChart(),

              ///Learn more
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    text: "Learn more",
                    fontWeight: FontWeight.w600,
                    textColor: Colors.black,
                  ),
                  CustomButton(
                    buttonText: "View Full Report",
                    onPress: () {},
                    textColor: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressContainer extends StatelessWidget {
  final String progressValue;
  final IconData icon;

  const ProgressContainer({
    Key? key,
    required this.progressValue,
    this.icon = Icons.arrow_upward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.18,
      height: context.height * 0.035,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.width * 0.02),
          color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon,
              color: icon == Icons.arrow_upward ? Colors.green : Colors.red),
          CustomText(
              text: "15%",
              textColor: icon == Icons.arrow_upward ? Colors.green : Colors.red)
        ],
      ),
    );
  }
}

class InternationalOrLocalTabs {
  final String? label;

  bool? isSelected;

  InternationalOrLocalTabs({this.label, isSelected});
}
