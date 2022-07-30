import 'package:flutter/material.dart';

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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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

        // for you section

        // recently added
      ]),
    );
  }
}
