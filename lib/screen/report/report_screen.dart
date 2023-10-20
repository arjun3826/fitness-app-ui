import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'report_card_wigets.dart';
import 'package:table_calendar/table_calendar.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({
    super.key,
  });

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: _selectedTabIndex, length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffF2F6F9),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            "Report",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: PopupMenuButton(
                position: PopupMenuPosition.under,
                icon: const Icon(Icons.more_vert),
                onSelected: (newValue) {
                  // add this property
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 0,
                    child: Row(
                      children: [
                        Image.asset("assets/icons/feedback.png"),
                        const SizedBox(width: 30),
                        const Text("Feedback")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Image.asset("assets/icons/help.png"),
                        const SizedBox(width: 30),
                        const Text("Help")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 58),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    color: _selectedTabIndex == _tabController.index
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8)),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                tabs: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Daily",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Calendar",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReportCardWigets(
                        text: "Calories",
                        color: Color(0xff1FA755),
                        abc: "1024",
                        kcl: "kcl",
                        icon: Icons.local_fire_department,
                      ),
                      ReportCardWigets(
                        text: "Minutes",
                        color: Color(0xff7047EB),
                        abc: "128",
                        kcl: "min",
                        icon: Icons.watch_later_rounded,
                      ),
                      ReportCardWigets(
                        text: "Weight",
                        color: Color(0xffE91C4C),
                        abc: "75.2",
                        kcl: "kg",
                        icon: Icons.speed,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    // width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 44, right: 44, top: 16, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Workout",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w800),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Week",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  IconButton.filled(
                                      onPressed: () {},
                                      icon: const Icon(Icons.expand_more))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 14),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BarChart(
                                height: 50,
                                color: Color.fromARGB(208, 137, 152, 172),
                                text: "Sun",
                              ),
                              BarChart(
                                height: 100,
                                color: Color(0xff7047EB),
                                text: "Mon",
                              ),
                              BarChart(
                                height: 50,
                                color: Color.fromARGB(208, 137, 152, 172),
                                text: "Tue",
                              ),
                              BarChart(
                                height: 70,
                                color: Color.fromARGB(208, 137, 152, 172),
                                text: "Wed",
                              ),
                              BarChart(
                                height: 85,
                                color: Color.fromARGB(208, 137, 152, 172),
                                text: "Thu",
                              ),
                              BarChart(
                                height: 95,
                                color: Color.fromARGB(208, 137, 152, 172),
                                text: "Fri",
                              ),
                              BarChart(
                                height: 40,
                                color: Color.fromARGB(208, 137, 152, 172),
                                text: "Sat",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18, right: 0, bottom: 18, top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.directions_run,
                                    color: Color(0xff7047EB),
                                    size: 18,
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    "Step",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              PieChart2(),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 18, right: 0, bottom: 18, top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.water_drop,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text(
                                    "Water",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Pie121(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Schedule",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7047EB),
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  const SizedBox(height: 18),
                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                  ),
                  const SizedBox(height: 18),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Set Your Goal",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 24),
                  getGoalWidget("10 Push up"),
                  const SizedBox(height: 16),
                  getGoalWidget("100 Meter "),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget getGoalWidget(String goal) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              goal,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Text(
              "10 min",
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BarChart extends StatelessWidget {
  final double height;
  final Color color;
  final String text;
  const BarChart(
      {super.key,
      required this.height,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 32,
              height: 170,
              color: const Color.fromARGB(35, 217, 217, 217),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 32,
                height: height,
                color: color,
              ),
            )
          ],
        ),
        const SizedBox(height: 14),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: color,
          ),
        )
      ],
    );
  }
}

class PieChart2 extends StatelessWidget {
  PieChart2({Key? key}) : super(key: key);

  final dataMap = <String, double>{
    "Run": 60,
  };

  final colorList = <Color>[
    const Color(0xff7047EB),
  ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      ringStrokeWidth: 20,
      centerText: "60Km",
      centerTextStyle:
          const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      chartRadius: 114,
      chartType: ChartType.ring,
      baseChartColor: const Color(0xffD9D9D9),
      colorList: colorList,
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
      ),
      totalValue: 100,
    );
  }
}

class Pie121 extends StatelessWidget {
  Pie121({super.key});
  final dataMap = <String, double>{
    "Drink": 65,
  };

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      ringStrokeWidth: 20,
      centerText: "8 Cup",
      centerTextStyle:
          const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      chartRadius: 114,
      chartType: ChartType.ring,
      baseChartColor: const Color(0xffD9D9D9),
      colorList: [Theme.of(context).colorScheme.secondary],
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
      ),
      totalValue: 100,
    );
  }
}
