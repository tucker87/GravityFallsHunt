import { to_a0, from_a0 } from "./utils.js";
const min = 0;
const max = 25;

const increment_letter = (c, i) => {
  if (!c.match(/[a-zA-Z]/)) return c;

  const { value, offset } = to_a0(c);
  const a = value + i;
  return from_a0((a % 26) + (a < 0 ? 26 : 0), offset);
};

const ceaser_single = (s, i) =>
  s
    .split("")
    .map((c) => increment_letter(c, i))
    .join("");

const ceaser = (input, key) => {
  if (key) return console.log(ceaser_single(input, key));

  for (let i = min; i <= max; i++) {
    const result = ceasing_single(input, i);
    console.log(`${i}:\t${result}`);
  }
};

export { ceaser, ceaser_single };
