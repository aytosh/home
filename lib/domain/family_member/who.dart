enum Who {
  father("Отец"),
  mother("Мать");

  final String title;

  const Who(this.title);
}

Who getWho(String who) {
  switch (who) {
    case "father":
      return Who.father;
    case "mother":
    default:
      return Who.mother;
  }
}
