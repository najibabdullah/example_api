class Team {
  final int idTeam;
  final String title;
  final String strTeam;

  Team({required this.idTeam, required this.title, required this.strTeam});

  // Factory method to create an instance of PostModel from JSON
  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      idTeam: json['idTeam'],
      title: json['title'],
      strTeam: json['strTeam'],
    );
  }
}