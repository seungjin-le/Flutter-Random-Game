class TeamMember {
  String? name;
  String? email;
  String? avatarUrl;

  TeamMember({this.name, this.email, this.avatarUrl});
}

class ModelTeamMembers {
  String? teamName;
  List<TeamMember>? members;

  ModelTeamMembers({this.teamName, this.members});
}
