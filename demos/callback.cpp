extern "C" void long_press(float percent);

extern "C" void start_long_press() {
  for (int i = 0; i <= 100; i++) {
    if (i % 10 == 0) {
      long_press(i);
    }
  }
}