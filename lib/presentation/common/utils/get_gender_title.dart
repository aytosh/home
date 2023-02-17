String getGenderTitle(String gender) {
  switch (gender) {
    case "female":
      return "Женский";
    case "male":
    default:
      return "Мужской";
  }
}
