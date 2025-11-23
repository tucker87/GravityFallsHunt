import { from_a0, offsets } from './utils.js'

const a = from_a0(offsets[0])

const fry = c => {
  let n = parseInt(c, 2)
  if (n > 8) n++
  if (n > 20) n++
  return a(n)
}

const bacon = a => b => s =>
  s
    .replace(RegExp(a, 'g'), 0)
    .replace(RegExp(b, 'g'), 1)
    .split(' ')
    .map(fry)
    .join('')

export { bacon }
