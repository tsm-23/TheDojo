class Heiya{
  String name;
  String department;
  String sensei;
  String imagePath;
  String rating;

  Heiya({ 
    required this.name,
    required this.department,
    required this.sensei,
    required this.imagePath,
    required this.rating
    });

    String get _name => name;
    String get _department => department;
    String get _sensei => sensei;
    String get _imagePath => imagePath;
    String get _rating => rating;
} 