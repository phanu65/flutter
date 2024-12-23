import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResumeScreen(),
    );
  }
}

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ประวัติส่วนตัว",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2E5077),
      ),
      body: Container(
        color: Color(0xFFEFEFEF), 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // รูปโปรไฟล์
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/Image.jpg'),
                  ),
                ),
                SizedBox(height: 20),

                // ชื่อและตำแหน่ง
                Center(
                  child: Column(
                    children: [
                      Text(
                        "นาย ภานุพงษ์ จำปัน",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E5077),
                        ),
                      ),
                      Text(
                        "ชื่อเล่น เท่",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
  SectionHeader(
                    title: "ข้อมูลส่วนตัว", color: Color(0xFF2E5077)),
                Divider(color: Color(0xFF2E5077)),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ContactInfo(
                    icon: Icons.work,
                    text: "เขียนโค้ด",
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ContactInfo(
                    icon: Icons.flatware,
                    text: "KFC",
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ContactInfo(
                    icon: Icons.home,
                    text: "กำแพงเพชร",
                  ),
                ),
                SizedBox(height: 20),
                // ข้อมูลการติดต่อ
                SectionHeader(
                    title: "ข้อมูลการติดต่อ", color: Color(0xFF2E5077)),
                Divider(color: Color(0xFF2E5077)),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ContactInfo(
                    icon: Icons.email,
                    text: "phanuponkc65@.nu.ac.th",
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ContactInfo(
                    icon: Icons.phone,
                    text: "+66 97 227 7204",
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ContactInfo(
                    icon: Icons.location_on,
                    text: "ประเทศไทย",
                  ),
                ),
                SizedBox(height: 20),

                // ทักษะ
                SectionHeader(title: "ทักษะ", color: Color(0xFF2E5077)),
                Divider(color: Color(0xFF2E5077)),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SkillChip(skill: "Flutter"),
                    SkillChip(skill: "Dart"),
                    SkillChip(skill: "Firebase"),
                    SkillChip(skill: "UI/UX Design"),
                    SkillChip(skill: "JavaScript"),
                    SkillChip(skill: "Design"),
                  ],
                ),
                SizedBox(height: 20),

                // การศึกษา
                SectionHeader(title: "การศึกษา", color: Color(0xFF2E5077)),
                Divider(color: Color(0xFF2E5077)),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ExperienceItem(
                    title: "การศึกษาปฐมวัย",
                    company: "อนุบาลคลองลาน",
                    duration: "2552 - 2555",
                  ),
                ),
               Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ExperienceItem(
                    title: "ระดับชั้นประถมศึกษา",
                    company: "อนุบาลคลองลาน",
                    duration: "2555 - 2558",
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ExperienceItem(
                    title: "ระดับชั้นมัธยมศึกษา",
                    company: "คลองลานวิทยา",
                    duration: "2558 - 2564",
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: ExperienceItem(
                    title: "ระดับอุดมศึกษา",
                    company: "มหาวิทยานเรศร",
                    duration: "2564 - 2568",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget สำหรับหัวข้อ
class SectionHeader extends StatelessWidget {
  final String title;
  final Color color;

  SectionHeader({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

// Widget สำหรับข้อมูลการติดต่อ
class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xFF2E5077),
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

// Widget สำหรับแสดงทักษะ
class SkillChip extends StatelessWidget {
  final String skill;

  SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: Color(0xFFBFD7EA), // สีพาสเทลอ่อน
      labelStyle: TextStyle(color: Color(0xFF2E5077)),
    );
  }
}

// Widget สำหรับแสดงประสบการณ์หรือการศึกษา
class ExperienceItem extends StatelessWidget {
  final String title;
  final String company;
  final String duration;

  ExperienceItem({
    required this.title,
    required this.company,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.work,
        color: Color(0xFF2E5077),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text("$company\n$duration"),
      isThreeLine: true,
    );
  }
}
