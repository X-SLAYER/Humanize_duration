int getSlavicForm(int value) {
  if (value.floor() != value) {
    return 2;
  } else if ((value % 100 >= 5 && value % 100 <= 20) ||
      (value % 10 >= 5 && value % 10 <= 9) ||
      value % 10 == 0) {
    return 0;
  } else if (value % 10 == 1) {
    return 1;
  } else if (value > 1) {
    return 2;
  } else {
    return 0;
  }
}
