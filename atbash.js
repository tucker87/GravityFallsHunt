import { to_a0, letterMap } from './utils.js'

const swap_letter = c => {
  let { value, to_char } = to_a0(c)
  return to_char(Math.abs(value - 25))
}

const atBash = input => letterMap(input, swap_letter)

export { atBash }
