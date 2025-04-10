import 'package:flutter/material.dart';

class SkillComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.blueGrey,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Skills:-',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  _buildSkillCategory('Languages', ['Dart', 'Core Java', 'JavaScript', 'SQL']),
                  SizedBox(width: 15),
                  _buildSkillCategory('Frameworks', ['Flutter', 'Node.js', 'Express.js', 'Bootstrap']),
                  SizedBox(width: 15),
                  _buildSkillCategory('Tools', ['Android Studio', 'VS Code', 'GitHub']),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Database:-',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 5),
              buildRichText(['MySQL', 'SqLite', 'Oracle']),
              SizedBox(height: 20),
              Text(
                'Other Skills:-',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 5),
              buildRichText(['API Integration', 'UI/UX Design', 'Git Version Control']),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCategory(String title, List<String> skills) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 5),
          Column(
            children: skills.map((skill) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Row(
                  children: [
                    Icon(Icons.check, color: Colors.green),
                    SizedBox(width: 5),
                    Text(
                      skill,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget buildRichText(List<String> items) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
        children: items.map<InlineSpan>((item) {
          return TextSpan(
            text: '$item, ',
            style: TextStyle(fontWeight: FontWeight.bold),
          );
        }).toList(),
      ),
    );
  }
}
