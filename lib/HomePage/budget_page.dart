import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({super.key, required this.title});

  final String title;

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, ${widget.title}',
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Here you can view an overview of your budget',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.black26),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      foregroundColor: Colors.black,
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(CupertinoIcons.bell)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 216, 250, 100)),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "My budget",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            text: "\$ ",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: '1.555,00',
                                  style: GoogleFonts.albertSans(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          AddButtonWidget(
                            text: "Income",
                            icon: Icons.file_download_outlined,
                          ),
                          AddButtonWidget(
                            text: "Spending",
                            icon: Icons.file_upload_outlined,
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 130, 183, 70),
                      ),
                      const Text(
                        "Budget overview",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          BudgetOverviewWidget(),
                          BudgetOverviewWidget(
                            text: "Spending",
                            download: false,
                            profit: false,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My Plan",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                        onTap: () => {print("Hello")},
                        child: const Text("View all",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 152,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PlansWidget(
                          tag: "Vacation",
                          text: "Trip to Waduk Cengklik",
                          activeColor: Colors.blue.shade900,
                          inactiveColor: Colors.blue.shade100,
                        ),
                        PlansWidget(
                          tag: "work",
                          text: "Building Desk Setup",
                          activeColor: Colors.purple.shade900,
                          inactiveColor: Colors.purple.shade100,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text("View all")
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView(
                  children: const [
                    TransactionWidget(
                      transaction: "Groceries",
                      price: 29,
                      date: "Dec 2, 2022",
                    ),
                    TransactionWidget(
                      transaction: "Phone",
                      price: 400,
                      date: "Dec 30, 2022",
                    )
                  ],
                ))
              ],
            ),
          ),
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                          icon: const Icon(CupertinoIcons.creditcard)),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "My Budget",
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
                    CupertinoIcons.list_bullet,
                    color: Colors.black45,
                  )),
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

class TransactionWidget extends StatelessWidget {
  final String transaction;
  final int price;
  final String date;

  const TransactionWidget({
    super.key,
    required this.transaction,
    required this.price,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white70),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.file_download_outlined),
              Text(
                "\$$price.00",
                style: const TextStyle(color: Colors.green),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transaction,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  date,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w800),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PlansWidget extends StatelessWidget {
  final Color activeColor;
  final Color inactiveColor;
  final String text;
  final String tag;

  const PlansWidget({
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.blue,
    required this.text,
    required this.tag,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70,
      ),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "#$tag",
            style: TextStyle(
                color: activeColor, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "\$249",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Text(
                "\$400",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black38),
              )
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 10,
            ),
            child: Slider(
                value: 10,
                min: 0,
                max: 100,
                activeColor: activeColor,
                inactiveColor: inactiveColor,
                thumbColor: Colors.white60,
                onChanged: (double current) => {print(current)}),
          )
        ],
      ),
    );
  }
}

class BudgetOverviewWidget extends StatelessWidget {
  final String? text;
  final bool download;
  final bool profit;
  final int? change;
  final int? amount;

  const BudgetOverviewWidget({
    this.text,
    this.download = true,
    this.profit = true,
    this.amount,
    this.change,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black87,
              child: Icon(
                download
                    ? Icons.file_download_outlined
                    : Icons.file_upload_outlined,
                color: Colors.white,
              ),
            ),
            Text(
              "+${change ?? 500}%",
              style: TextStyle(
                  color: profit ? Colors.green : Colors.redAccent,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text ?? "Incomes",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "\$${amount ?? 3000}.00",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 12,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
                child: Icon(
                  profit
                      ? CupertinoIcons.arrow_up_right
                      : CupertinoIcons.arrow_down_right,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class AddButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const AddButtonWidget({
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 216, 250, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              shadowColor: const Color.fromARGB(255, 216, 250, 100)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Placeholder()));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                Text("Add $text",
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )),
    );
  }
}
