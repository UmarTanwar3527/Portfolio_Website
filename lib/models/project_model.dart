class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? description;
  final String? liveDemoLink;
  final String? githubLink;

  ProjectModel({
    required this.imgURL,
    required this.projectName,
    this.description,
    this.liveDemoLink,
    this.githubLink,
  });
}

// this is the mode that i have already created.
List<ProjectModel> projects = [
  // 0 Index
  ProjectModel(
    description:
        "A Wallpaper App in Flutter that allows users to browse, search, and set high-quality wallpapers effortlessly, enhancing their device’s look with just a tap.",
    imgURL: 'asset/images/wallpaperapp.png',
    projectName: 'Wallpaper App',
    liveDemoLink: '',
    githubLink: 'https://github.com/UmarTanwar3527/Wallpaper-App',
  ),
  // 1 Index
  ProjectModel(
    description:
        "A Flutter application demonstrating user authentication flows. This project showcases login, signup with email-password and Google Sign-up.",
    imgURL: 'asset/images/user-authentication-for-flutter-apps-2.png',
    projectName: 'Flutter-Authentication App',
    liveDemoLink: '',
    githubLink: 'https://github.com/UmarTanwar3527/flutter-auth',
  ),
  // 2 Index
  ProjectModel(
    description:
        "This project employs machine learning to predict the quality of milk, utilizing various features to classify milk into different quality categories.",
    imgURL: 'asset/images/milk.png',
    projectName: 'Milk Quality Prediction',
    liveDemoLink: '',
    githubLink: 'https://github.com/UmarTanwar3527/Milk-Quality-Prediction',
  ),
  // 3 Index
  ProjectModel(
    description:
        "A Django-based web application that provides a functional contact form, allowing users to send messages and inquiries directly through the website.",
    imgURL: 'asset/images/django.png',
    projectName: 'Django Contactus',
    liveDemoLink: '',
    githubLink: 'https://github.com/UmarTanwar3527/django-contactus-project',
  ),
  // 4 Index
  ProjectModel(
    description:
        "A Natural Language Processing (NLP) project focused on sentiment analysis, where text data is analyzed to determine the sentiment expressed within it.",
    imgURL: 'asset/images/NLP-Sentiment Analysis.png',
    projectName: 'NLP-Sentiment Analysis',
    liveDemoLink: '',
    githubLink: 'https://github.com/UmarTanwar3527/NLPsentimentanalysisProject5',
  ),
  // 5 Index
  ProjectModel(
    description:
        "This project is focused on analyzing restaurant reviews. It extract insights from customer feedback, potentially classifying reviews as positive, negative, or neutral.",
    imgURL: 'asset/images/Restaurant-Reviews.png',
    projectName: 'RestaurantReviws',
    liveDemoLink: '',
    githubLink: 'https://github.com/UmarTanwar3527/RestaurantReviws',
  ),
  // 6 Index
  ProjectModel(
    description:
        "This project automates the process of interacting with the ChatGPT API, allowing users to store the responses to their questions in a structured .docx file format.",
    imgURL: 'asset/images/ChatGPT to Docs.png',
    projectName: 'ChatGPT to Docs',
    liveDemoLink: '',
    githubLink:
        'https://github.com/UmarTanwar3527/Storing-ChatGPT-Responce-In-Docs-File-with-Question-',
  ),
  // 7 Index
  ProjectModel(
    description:
        "A Flutter-based interactive web application that visually demonstrates popular sorting algorithms like Bubble Sort, Merge Sort, and Quick Sort. The project helps users understand algorithm behavior through real-time animations and controls for array size and speed.",
    imgURL: 'asset/images/sorting_visualizer.png',
    projectName: 'Sorting Visualizer',
    liveDemoLink: 'https://umarsortingvisualizer.netlify.app/',
    githubLink: 'https://github.com/UmarTanwar3527/sorting_visualizer',
  ),
  // ProjectModel(
  //   description:
  //       "A Simple Chat App in Flutter can provide real-time messaging capabilities without using complex state management solutions like the Provider package. Features:User Authentication: Basic login and signup functionality.Real-time Messaging: Users can send and receive text messages.User Interface: Simple and user-friendly interface.Real-time Updates: Use Firebase Firestore for live message updates.",
  //   imgURL: 'asset/images/chat.png',
  //   projectName: 'Simple Chat App',
  // ),
  // ProjectModel(
  //   description:
  //       "An E-commerce App using the Provider package in Flutter allows users to browse, search, and purchase products. The Provider package manages the state of the application, ensuring smooth navigation and data updates across different parts of the app.",
  //   imgURL: 'asset/images/ecommerce.png',
  //   projectName: 'E-commerce App',
  // ),
  // ProjectModel(
  //   description:
  //       "A News App using an API provides users with the latest news articles and updates by fetching data from various news sources. The app can categorize news by topics such as sports, technology, politics, and entertainment, and often includes features like search, bookmarking, and push notifications for breaking news",
  //   imgURL: 'asset/images/news.png',
  //   projectName: 'News App',
  // ),
  // ProjectModel(
  //   description:
  //       "A Weather App using an API fetches and displays real-time weather data for various locations. Users can view current weather conditions, forecasts, and severe weather alerts. The app often includes features like hourly and weekly forecasts, weather maps, and the ability to save favorite locations for quick access.",
  //   imgURL: 'asset/images/weather.png',
  //   projectName: 'Weather App',
  // ),
  // ProjectModel(
  //   description:
  //       "A Quiz App in Flutter allows users to take a quiz with questions fetched from an external API. Each question is displayed with a countdown timer, and users must answer within the time limit. At the end of the quiz, the app calculates and displays the user's score.",
  //   imgURL: 'asset/images/quiz.png',
  //   projectName: 'Quiz App',
  // ),
];
