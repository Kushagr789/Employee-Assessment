class Employee {
  final String id;
  final String name;
  final String domain;
  final DateTime joinDate;
  final bool isActive;
  final String imageUrl;

  Employee({
    required this.id,
    required this.name,
    required this.domain,
    required this.joinDate,
    required this.isActive,
    required this.imageUrl
  });
}