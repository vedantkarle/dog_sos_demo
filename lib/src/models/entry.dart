class Entry {
  final String entryId;
  final String name;
  final String location;
  final String phone;
  final String dogBreed;
  final String dogsCondition;

  Entry(
      {this.entryId,
      this.name,
      this.location,
      this.phone,
      this.dogBreed,
      this.dogsCondition});

  factory Entry.fromJson(Map<String, dynamic> json) {
    return Entry(
        entryId: json['entryId'],
        name: json['name'],
        location: json['location'],
        phone: json['phone'],
        dogBreed: json['dogBreed'],
        dogsCondition: json['dogsCondition']);
  }

  Map<String, dynamic> toMap() {
    return {
      'entryId': entryId,
      'name': name,
      'location': location,
      'phone': phone,
      'dogBreed': dogBreed,
      'dogsCondition': dogsCondition
    };
  }
}
