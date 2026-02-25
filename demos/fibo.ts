export function fibo(n: i32): i64 {
  if (n === 0) return 0;
  if (n === 1) return 1;
  let resm1: i64 = 0;
  let res: i64 = 1;
  for (let i: i32 = 1; i < n; i++) {
    let resp1: i64 = resm1 + res;
    resm1 = res;
    res = resp1;
  }
  return res;
}
