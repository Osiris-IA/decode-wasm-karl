extern "C" void animer_bille(float x, float y);

extern "C" void lancer_simulation(float x, float y, int nb_etapes) {
  float vy = 10.0f;
  for (int i = 0; i < nb_etapes; i++) {
    x += 5.0f;
    y += vy;
    vy -= 0.5f;

    if (y < 0) {
      y = 0;
      vy = -vy * 0.6f;
    }

    animer_bille(x, y);
  }
}