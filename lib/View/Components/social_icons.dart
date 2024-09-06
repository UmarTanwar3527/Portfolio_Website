import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      right: 5,
      top: Responsive.isMobile(context)
          ? Responsive.heightOfScreen(context) * 0.1
          : Responsive.heightOfScreen(context) * 0.2,
      child: const SizedBox(
        height: 200,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialIconDesign(
                socialLink:
                    "https://www.linkedin.com/in/umartanwar/",
                iconUrl:
                    'https://static.vecteezy.com/system/resources/previews/016/716/470/non_2x/linkedin-icon-free-png.png'),
            SocialIconDesign(
                socialLink: "https://github.com/UmarTanwar3527",
                iconUrl:
                    'https://cdn-icons-png.freepik.com/256/11023/11023876.png'),                    
            SocialIconDesign(
                socialLink: "https://leetcode.com/u/UmarTanwar_3527/",
                iconUrl:
                    'https://img.icons8.com/?size=100&id=9L16NypUzu38&format=png&color=000000'),
            SocialIconDesign(
                socialLink: "https://www.geeksforgeeks.org/user/umartanwar27/", // link to open
                iconUrl: // icon link from google
                    'https://img.icons8.com/?size=100&id=AbQBhN9v62Ob&format=png&color=000000'),
          ],
        ),
      ),
    );
  }
}

class SocialIconDesign extends StatelessWidget {
  final String iconUrl;
  final String socialLink;
  const SocialIconDesign({
    super.key,
    required this.iconUrl,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.transparent,
      onPressed: () {
        launchUrl(
          Uri.parse(socialLink),
        );
      },
      child: Image.network(
        iconUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
