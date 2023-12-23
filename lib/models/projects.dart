class Project{
  final String name, description ,githubLink ;
  Project({required this.name , required this.description,required this.githubLink});
}

List<Project> projects = [
  Project(name: "expense tracker", description: "an application which tracks your expenses built using flutter and dart" , githubLink:"https://github.com/kevinpaul468/expense-tracker"),
  Project(name: "dice", description: "a responsive dice application built using flutter and dart", githubLink:"https://github.com/kevinpaul468/dice"),
  Project(name: "comment cleaner", description: "a nodejs application and a vs code extension which cleans the comments from your code", githubLink:"https://github.com/kevinpaul468/comment-cleaner"),
  Project(name: "en to hi website translator", description: "a extension which translates english to hindi in you webpage built using django and python",githubLink: "https://github.com/kevinpaul468/en_to_hi"),
  Project(name: "Cardio", description: "a research based project which uses machine learning to predict the heart disease", githubLink:"https://github.com/kevinpaul468/Cardio"),
];