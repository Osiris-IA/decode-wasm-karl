#include <cstdint>
#include <cstdlib>
#include <emscripten.h>

extern "C" void EMSCRIPTEN_KEEPALIVE generate_pixels(uint8_t *memory, int width,
                                                     int height) {
  int size = width * height;

  for (int i = 0; i < size; i++) {
    int index = i * 4;

    memory[index] = static_cast<uint8_t>(rand() % 256);     // Red
    memory[index + 1] = static_cast<uint8_t>(rand() % 256); // Green
    memory[index + 2] = static_cast<uint8_t>(rand() % 256); // Blue
    memory[index + 3] = 255;                                // Alpha
  }
}