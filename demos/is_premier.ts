export function is_premier(value: i32): i32 {
  const middle: f64 = Math.floor(value / 2);

  for (let i: i32 = 2; i <= middle; i++) {
    if (value % i === 0) return i;
  }

  return true;
}
