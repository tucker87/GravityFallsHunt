import { ceaser_single } from "./ceaser.js";
import { to_a0, from_a0 } from "./utils.js";

const vigenere_single = (input, key) => {
  let keyIndex = 0;
  return input
    .split("")
    .map((c) => {
      if (c === " ") return " ";
      return ceaser_single(c, -to_a0(key[keyIndex++ % key.length]).value);
    })
    .join("");
};

const vigenere = (input, key) => console.log(vigenere_single(input, key));

export { vigenere, vigenere_single };
