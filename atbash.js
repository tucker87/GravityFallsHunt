import { to_a0, from_a0 } from "./utils.js";

const swap_letter = (c) => {
  if (!c.match(/[a-zA-Z]/)) return c;

  let { value, offset } = to_a0(c);
  return from_a0(Math.abs(value - 25), offset);
};

const atBash = (input) => {
  const result = input.split("").map(swap_letter).join("");
  console.log(result);
};

export { atBash };
