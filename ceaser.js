import { to_a0, letterMap, increment_letter } from './utils.js'

const min = 0
const max = 25

const _ceaser = (s, i) => letterMap(s, increment_letter(i))

const ceaser = (input, key) => _ceaser(input, key)

const ceaser_all = input => {
  for (let i = min; i <= max; i++) {
    const result = _ceaser(input, i)
    console.log(`${i}:\t${result}`)
  }
}

export { ceaser, ceaser_all }
