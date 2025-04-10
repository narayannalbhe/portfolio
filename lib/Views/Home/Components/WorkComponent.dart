import 'package:flutter/material.dart';

class WorkComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.blueAccent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Work Experience',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            _buildWorkItem(
              'Flutter Developer',
              'Geobull Innovation LLP - Pune, Maharashtra',
              'June 2023 - Present',
              [
                'Collaborated with design and product teams to implement UI/UX designs and ensure a seamless user experience.',
                'Integrated APIs and third-party services like Firebase for backend functionality, authentication, and data storage.',
                'Conducted thorough testing, debugging, and optimization to deliver high-quality, bug-free applications.',
                'Participated in code reviews, following best practices, and contributing to code quality improvements.',
                'Stayed updated with Flutter and mobile development trends, attended workshops, and continuously learned to enhance skills.'
              ],
            ),
            SizedBox(height: 20),
            _buildWorkItem(
              'Java Developer',
              'Khoji Lab - Pune, Maharashtra',
              'October 2022 - April 2023',
              [
                'Collaborated with senior developers on UI/UX design tasks using HTML and CSS.',
                'Assisted in creating user-friendly interfaces and prototypes for applications.',
                'Utilized Git for version control and collaborated effectively with team members.'
              ],
            ),
            SizedBox(height: 20),
            _buildWorkItem(
              'Web Developer',
              'PHN Technology Pvt Ltd - Pune, Maharashtra',
              'April 2023 - August 2023',
              [
                'Collaborated with the development team on web design and front-end development projects.',
                'Implemented responsive web designs using HTML, CSS, and JavaScript.',
                'Worked on version control using Git and collaborated in a team environment.'
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkItem(String position, String company, String duration, List<String> responsibilities) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                position,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                duration,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            company,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: responsibilities
                .map((responsibility) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 16,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      responsibility,
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
