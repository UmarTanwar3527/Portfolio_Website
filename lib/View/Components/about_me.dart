import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 20 : 80,
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              "About Me",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: Responsive.isMobile(context) ? 20 : 40),
          Text(
            "Hey there! I'm Umar Tanwar, a passionate Flutter Developer with a knack for building sleek, efficient, and high-performing applications. specializing Firebase, API integration, and UI design. I specialize in crafting cross-platform mobile and web solutions that deliver seamless user experiences.\n\nBeyond Flutter, I have hands-on experience in Python, Machine Learning, Data Science, and Full-Stack Development, allowing me to build innovative applications that solve real-world problems. Whether it’s creating a custom form builder, AI-powered finance manager, or a smart meme generator, I thrive on turning ideas into functional and elegant products.\n\nThank you for visiting my portfolio. I'm always exploring new technologies and pushing my limits to build cutting-edge apps. If you're looking for someone to develop your next Flutter-based project or collaborate on an exciting venture, \n\nlet’s connect! and Build something amazing together!",
            style: TextStyle(
              fontSize: Responsive.isMobile(context) ? 16 : 20,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
