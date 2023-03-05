enum Gender {
  male("Мужской"),
  female("Женский");

  final String title;

  const Gender(this.title);
}

Gender getGender(String gender) {
  switch (gender) {
    case "male":
      return Gender.male;
    case "female":
    default:
      return Gender.female;
  }
}
