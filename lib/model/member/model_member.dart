class Member {
  final String name;
  final String email;
  final String avatarUrl;

  const Member({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  @override
  String toString() => "Movie<$name:$email>";
}
