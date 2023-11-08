import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.black45,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black45,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NavigationRail(
            extended: isExpanded,
            backgroundColor: Colors.white,
            unselectedLabelTextStyle: const TextStyle(
              color: Colors.white30,
            ),
            destinations: [
              const NavigationRailDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.black26,
                ),
                label: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  Icons.person,
                  color: Colors.black26,
                ),
                label: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  Icons.bar_chart_outlined,
                  color: Colors.black26,
                ),
                label: Text(
                  "Tasks",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  Icons.message,
                  color: Colors.black26,
                ),
                label: Text(
                  "Messages",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.black26,
                ),
                label: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ],
            selectedIndex: 0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity / 2,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Type to Search...",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            "Banner Goes Here",
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Today's ",
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                          ),
                          children: [
                            TextSpan(
                              text: "Tasks",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    children: [
                      TaskCard(
                        title: "Learn Flutter",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      TaskCard(
                        title: "Learn Python",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    children: [
                      TaskCard(
                        title: "Learn JavaScript",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      TaskCard(
                        title: "Learn PHP",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    children: [
                      TaskCard(
                        title: "Learn JavaScript",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      TaskCard(
                        title: "Learn PHP",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    children: [
                      TaskCard(
                        title: "Learn JavaScript",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      TaskCard(
                        title: "Learn PHP",
                        subTitle: "Commit to spend 4 hours a day",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const PaginationButtons(),
                ],
              ),
            ),
          ),
          // Right Side
          Container(
            width: 300.0,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  height: 100.0,
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        "Percentage Completed",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " 40",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " 100%",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.black12,
                        color: Colors.teal,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  height: 100.0,
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        "Percentage Completed",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "100%",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.black12,
                        color: Colors.teal,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.title, required this.subTitle});

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 2.0,
        ),
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.check,
              color: Colors.black,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subTitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class PaginationButtons extends StatelessWidget {
  const PaginationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return TextButton(
          onPressed: () {},
          child: Text(
            " ${index + 1}",
            style: const TextStyle(
              color: Colors.teal,
            ),
          ),
        );
      })
        ..add(
          TextButton(
            onPressed: () {},
            child: const Text(
              "Next",
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
          ),
        ),
    );
  }
}
