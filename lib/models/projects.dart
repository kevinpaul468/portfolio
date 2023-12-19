class Project{
  final String name, description ;
  Project({required this.name , required this.description});
}

List<Project> projects = [
  Project(name: "expense tracker", description: "an application which tracks your expenses built using flutter and dart"),
  Project(name: "dice", description: "a responsive dice application built using flutter and dart"),
  Project(name: "comment cleaner", description: "a nodejs application and a vs code extension which cleans the comments from your code"),
  Project(name: "en to hi website translator", description: "a extension which translates english to hindi in you webpage built using django and python"),
  Project(name: "Cardio", description: "a research based project which uses machine learning to predict the heart disease"),
];