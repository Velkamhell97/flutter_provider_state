
//-No las dejo final para poder cambiarlas, tambien puede utilizarse el copyWith pero se haran muchas modificaciones
class User {
  String name;
  DateTime? birthday;
  late List<String> professions;

  User({required this.name, this.birthday, List<String>? professions}){
    this.professions = professions ?? [];
  }

  int? _calculateAge(DateTime? birthDate) {
    if(birthDate != null){
      DateTime currentDate = DateTime.now();
      int age = currentDate.year - birthDate.year;
      int month1 = currentDate.month;
      int month2 = birthDate.month;
      if (month2 > month1) {
        age--;
      } else if (month1 == month2) {
        int day1 = currentDate.day;
        int day2 = birthDate.day;
        if (day2 > day1) {
          age--;
        }
      }
      return age;
    } else {
      return null;
    }   
  }

  int? get age => _calculateAge(birthday);

  User copyWith({String? name, DateTime? birthday, List<String>? professions}){
    return User(
      name: name ?? this.name,
      birthday: birthday ?? this.birthday,
      professions: professions ?? this.professions
    );
  }
}