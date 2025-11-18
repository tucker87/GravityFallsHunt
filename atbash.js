import { to_a0, from_a0, isAlpha } from "./utils.js";

const swap_letter = (c) => {
  if (!isAlpha(c)) return c;

  let { value, offset } = to_a0(c);
  return from_a0(Math.abs(value - 25), offset);
};

const atBash = (input) => {
  const result = input.split("").map(swap_letter).join("");
  console.log(result);
};

export { atBash };
