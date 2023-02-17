String getStatusTitle(String status) {
  switch (status) {
    case "active":
      return "Активный";

    case "graduated":
      return "Выпускник";

    case "out of":
      return "Отчисленный";

    case "not confirmed":
    default:
      return "Не подтвержденный";
  }
}
