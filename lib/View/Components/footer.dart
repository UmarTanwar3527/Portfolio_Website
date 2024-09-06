import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('© Copyright 2024'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Built by",
            ),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse("https://twitter.com/umar_tanwar27"),);
                },
                child: const Text(
                  "Mohammed Umar Tanwar",
                ))
          ],
        )
      ],
    );
  }
}
