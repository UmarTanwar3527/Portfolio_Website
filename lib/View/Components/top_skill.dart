import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "My Top Skills",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 10
                : Responsive.widthOfScreen(context) / 4,
          ),
          child: const Wrap(
            children: [
             SkillCard(
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
              ),
              SkillCard(
                url:
                    'https://avatars.githubusercontent.com/u/1609975?s=280&v=4',
              ),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/800px-Python-logo-notext.svg.png'),
              SkillCard(
                  url:
                      'https://miro.medium.com/v2/resize:fit:300/1*R4c8lHBHuH5qyqOtZb3h-w.png'),
              SkillCard(
                  url:
                      'https://cdn-icons-png.flaticon.com/512/1493/1493169.png'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/GitHub_Invertocat_Logo.svg/180px-GitHub_Invertocat_Logo.svg.png'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/1200px-Java_programming_language_logo.svg.png'),
              SkillCard(
                  url:
                      'https://banner2.cleanpng.com/20180411/wre/avf0mauoj.webp'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png'),
              SkillCard(
                  url:
                      'https://media2.dev.to/dynamic/image/width=1000,height=420,fit=cover,gravity=auto,format=auto/https%3A%2F%2Fdev-to-uploads.s3.amazonaws.com%2Fuploads%2Farticles%2F0tsd0732obeqonqfx0gy.png'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/e/ed/Pandas_logo.svg'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/3/31/NumPy_logo_2020.svg'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/3/38/SQLite370.svg'),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: shadoColor,
              blurRadius: 6,
              spreadRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          width: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 7
              : 80,
          child: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(30),
                child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
