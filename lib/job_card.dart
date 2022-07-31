import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.imagePath,
    required this.time,
    required this.role,
    required this.salary,
  }) : super(key: key);
  final String imagePath;
  final String time;
  final String role;
  final String salary;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        // color: Colors.grey.shade800,
        decoration: BoxDecoration(
            color: imagePath == 'assets/uber.png'
                ? Colors.grey.shade800
                : imagePath == 'assets/apple.png'
                    ? Colors.grey.shade300
                    : Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      time,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    role,
                    style: TextStyle(
                      color: imagePath == 'assets/uber.png'
                          ? Colors.white
                          : Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(salary, style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
