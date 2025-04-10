import 'package:flutter/material.dart';

class EducationComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            _buildEducationItem(
              'Master of Computer Application',
              'University Name',
              '2018 - 2021',
              'Description of courses, projects, and achievements during the MCA program.',
            ),
            SizedBox(height: 20),
            _buildEducationItem(
              'Bachelor of Computer Application',
              'University Name',
              '2015 - 2018',
              'Description of courses, projects, and achievements during the BCA program.',
            ),
            SizedBox(height: 20),
            Text(
              'Certifications',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            _buildCertificationItem(
              'Certification Name 1',
              'Issuing Authority',
              'Date Earned',
              'Description of the certification and its relevance.',
            ),
            SizedBox(height: 20),
            Text(
              'Extracurricular Activities',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Participated in various extracurricular activities such as:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 10),
            _buildActivityItem('Projects Exhibition', 'Description of your project and its impact.'),
            _buildActivityItem('Debates and Public Speaking', 'Achievements or experiences in debating.'),
            _buildActivityItem('Sports Participation', 'Participation in sports like cricket, chess, etc.'),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(String degree, String university, String duration, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          university,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          duration,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildCertificationItem(String certification, String issuingAuthority, String date, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          certification,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          issuingAuthority,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Text(
          date,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildActivityItem(String activity, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Icon(Icons.arrow_forward, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              activity,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
