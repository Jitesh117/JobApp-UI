import 'package:flutter/material.dart';
import 'package:job_app_ui/job_card.dart';
import 'package:job_app_ui/recent_add.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          //app bar
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.white)),
                child: Image.asset(
                  'assets/align-left.png',
                  height: 40,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          // discover a new path
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // search bar
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        border: InputBorder.none,
                        hintText: 'Search for a job..',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    'assets/options.png',
                    color: Colors.white,
                    width: 36,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          // for you section

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          Expanded(
            // height: 200,
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  JobCard(
                    imagePath: 'assets/uber.png',
                    time: 'Full Time',
                    role: 'UI/UX Designer',
                    salary: '\$45/h',
                  ),
                  JobCard(
                    imagePath: 'assets/google.png',
                    time: 'Part Time',
                    role: 'Product Developer',
                    salary: '\$80/h',
                  ),
                  JobCard(
                    imagePath: 'assets/apple.png',
                    time: 'Full Time',
                    role: 'Software Eng.',
                    salary: '\$95/h',
                  ),
                ],
              ),
            ),
          ),

          // recently added
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            // height: 300,
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: const [
                  RecentAdd(
                    imagePath: 'assets/nike.png',
                    role: 'UI/UX Designer',
                    company: 'Nike',
                    salary: '\$45/h',
                  ),
                  RecentAdd(
                    imagePath: 'assets/apple.png',
                    role: 'Software Designer',
                    company: 'Apple',
                    salary: '\$55/h',
                  ),
                  RecentAdd(
                    imagePath: 'assets/google.png',
                    role: 'Product Designer',
                    company: 'Google',
                    salary: '\$60/h',
                  ),
                  RecentAdd(
                    imagePath: 'assets/uber.png',
                    role: 'App Developer',
                    company: 'Uber',
                    salary: '\$75/h',
                  ),
                  RecentAdd(
                    imagePath: 'assets/microsoft.png',
                    role: 'Backend Developer',
                    company: 'Microsoft',
                    salary: '\$45/h',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
