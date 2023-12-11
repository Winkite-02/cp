class Course {
  String name;
  String branch;
  String imagePath;
  String area;

  Course({
    required this.name,
    required this.branch,
    required this.imagePath,
    required this.area,
  });

  String get _name => name;
  String get _branch => branch;
  String get _imagePath => imagePath;
  String get _area => area;
}
