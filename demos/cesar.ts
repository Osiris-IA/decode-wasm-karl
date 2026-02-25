export function cesar(memorySize: i32): i32 {
  for (let i: i32 = 0; i < memorySize; i++) {
    let car: u8 = load<u8>(i);
    car++;
    store<u8>(i, car);
  }
  return memorySize;
}
