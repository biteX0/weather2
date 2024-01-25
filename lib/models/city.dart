class City {
  bool inSelected;
  final String city;
  final String country;
  final bool isDefault;

  City(
      {required this.inSelected,
      required this.city,
      required this.country,
      required this.isDefault});

  static List<City> citiesList = [
    City(inSelected: false, city: 'Екатеринбург', country: 'Россия', isDefault: true),
    City(inSelected: false, city: 'Москва', country: 'Россия', isDefault: false),
    City(inSelected: false, city: 'Пекин', country: 'Китай', isDefault: false),
    City(inSelected: false, city: 'Джайпур', country: 'Индия', isDefault: false),
    City(inSelected: false, city: 'Сальвадор', country: 'Бразилия', isDefault: false),
    City(inSelected: false, city: 'Вашингтон', country: 'США', isDefault: false),
    City(inSelected: false, city: 'Париж', country: 'Франция', isDefault: false),
    City(inSelected: false, city: 'Лондон', country: 'Великобритания', isDefault: false),
    City(inSelected: false, city: 'Уфа', country: 'Россия', isDefault: false),
    City(inSelected: false, city: 'Нью-Йорк', country: 'США', isDefault: false),
    City(inSelected: false, city: 'Гонконг', country: 'Гонконг', isDefault: false),
  ];
  static List<City> getSelectedCity() {
    List<City> selectedCities = City.citiesList;
    return selectedCities.where((city) {
      return city.inSelected == true;
    }).toList();
  }
}
