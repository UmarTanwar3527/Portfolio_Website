import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentProject extends StatelessWidget {
  const RecentProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Some of My Recent Projects",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              projectModel: projects[7],
            ),
            ProjectCard(
              projectModel: projects[0],
            ),
            ProjectCard(
              projectModel: projects[1],
            ),
            ProjectCard(
              projectModel: projects[2],
            ),
            ProjectCard(
              projectModel: projects[3],
            ),
            ProjectCard(
              projectModel: projects[4],
            ),
            ProjectCard(
              projectModel: projects[5],
            ),
            ProjectCard(
              projectModel: projects[6],
            ),
            // ProjectCard(
            //   projectModel: projects[1],
            // ),
            // ProjectCard(
            //   projectModel: projects[2],
            // ),
            // ProjectCard(
            //   projectModel: projects[3],
            // ),
            // ProjectCard(
            //   projectModel: projects[4],
            // ),
            // ProjectCard(
            //   projectModel: projects[5],
            // ),
          ],
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectCard({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) * 0.9
              : Responsive.widthOfScreen(context) / 4,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(projectModel.imgURL),
              ),
              Text(
                projectModel.projectName,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  projectModel.description!,
                  maxLines: 5,
                  style: const TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (projectModel.liveDemoLink != null &&
                      projectModel.liveDemoLink!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 6,
                        right: 5,
                      ),
                      child: TextButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(projectModel.liveDemoLink!),
                          );
                        },
                        child: Text(
                          "Live Demo",
                          style: TextStyle(
                            fontSize: Responsive.isMobile(context) ? 14 : 17,
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Responsive.isMobile(context) ? 12 : 15,
                      bottom: Responsive.isMobile(context) ? 4 : 6,
                      left: 5,
                    ),
                    child: TextButton(
                      onPressed: () {
                        launchUrl(
                          Uri.parse(projectModel.githubLink!),
                        );
                      },
                      child: Text(
                        "GitHub",
                        style: TextStyle(
                          fontSize: Responsive.isMobile(context) ? 14 : 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
