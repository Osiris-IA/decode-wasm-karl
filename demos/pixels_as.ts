export function generate_pixels(width: i32, height: i32): void {
  const size: i32 = width * height;
  for (let i: i32 = 0; i < size; i++) {
    const addressPixel = i * 4;
    const redValue = i32(Math.random() * 255);
    const greenValue = i32(Math.random() * 255);
    const blueValue = i32(Math.random() * 255);
    const alphaValue = 255;

    store<u8>(addressPixel, redValue);
    store<u8>(addressPixel + 1, greenValue);
    store<u8>(addressPixel + 2, blueValue);
    store<u8>(addressPixel + 3, alphaValue);
  }
}
