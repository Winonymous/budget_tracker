import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key, required this.title});

  final String title;

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            title: const Text(
              "Details",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ))
            ],
            leading: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 18,
                    ),
                    SizedBox(width: 5),
                    Text("Back",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),
            ),
            leadingWidth: 100),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 216, 250, 100),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                          width: double.infinity,
                          child: const Padding(
                            padding: EdgeInsets.all(40),
                            child: Icon(
                              CupertinoIcons.car,
                              size: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "#Vacation",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.blue),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Trip to Waduk Cengklik",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Created 29 Dec 2022",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.black38),
                              ),
                            ],
                          ),
                        ),
                      ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white70,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Budget total",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black26),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$400.00",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: Row(
                            children: const [
                              Icon(
                                Icons.file_download_outlined,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Deposit",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 10,
                      ),
                      child: Slider(
                          value: 10,
                          min: 0,
                          max: 100,
                          activeColor: Colors.amber,
                          inactiveColor: Colors.amber,
                          thumbColor: Colors.white60,
                          onChanged: (double current) => {print(current)}),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "\$249",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "70%",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black38),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white70,
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "History",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      HistoryWidget(
                          date: "Dec 2, 2022 - 09:30 PM",
                          history: "Deposit",
                          price: "\$100.00"),
                      HistoryWidget(
                        date: "Nov 4, 2022 - 04:30 PM",
                        history: "Transfer to Build Desk",
                        price: "\$20.00",
                        add: false,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    CupertinoIcons.creditcard,
                    color: Colors.black45,
                  )),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 8, left: 15, right: 10, top: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () => {},
                          icon: const Icon(CupertinoIcons.list_bullet)),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "My Plan",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    CupertinoIcons.chart_bar_square,
                    color: Colors.black45,
                  )),
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    CupertinoIcons.arrow_right_arrow_left_square,
                    color: Colors.black45,
                  )),
            ],
          ),
        ));
  }
}

class HistoryWidget extends StatelessWidget {
  final String date;
  final String history;
  final String price;
  final bool add;

  const HistoryWidget({
    required this.date,
    required this.history,
    required this.price,
    this.add = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.file_download_outlined,
            color: add ? Colors.green : Colors.redAccent,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black26,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                history,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Text(
            price,
            style: TextStyle(
                color: add ? Colors.green : Colors.redAccent,
                fontSize: 15,
                fontWeight: FontWeight.w700),
          )
        ]),
      ),
    );
  }
}
