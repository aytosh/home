enum Status {
  active("Активный"),
  graduated("Выпускник"),
  outOf("Отчисленный"),
  notConfirmed("Не подтвержденный");

  final String title;

  const Status(this.title);
}

Status getStatus(String status) {
  switch (status) {
    case "active":
      return Status.active;

    case "graduated":
      return Status.graduated;

    case "out of":
      return Status.outOf;

    case "not confirmed":
    default:
      return Status.notConfirmed;
  }
}
