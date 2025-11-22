import { to_a0, letterMap, increment_letter } from './utils.js'

const _vigenere = keyIndex => key => c =>
  increment_letter(-to_a0(key[keyIndex++ % key.length]).value)(c)

const vigenere = (input, key) => letterMap(input, _vigenere(0)(key))

export { vigenere }
