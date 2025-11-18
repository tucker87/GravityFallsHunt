const offsets = [97, 65]

const to_a0 = c => {
  const value = c.charCodeAt(0)
  const isUpper = value < offsets[0]
  const offset = offsets[+isUpper]
  return { value: value - offset, to_char: n => from_a0(offset)(n) }
}

const from_a0 = offset => n => String.fromCharCode(n + offset)

const increment_letter = i => c => {
  let { value, to_char } = to_a0(c)
  value += i
  return to_char((value % 26) + (value < 0 ? 26 : 0))
}

const isAlpha = c => c.match(/[a-zA-Z]/)

const skipNonAlpha = f => c => (isAlpha(c) ? f(c) : c)

const pipe = (value, ...fns) => fns.reduce((acc, fn) => fn(acc), value)

const letterMap = (s, f) => s.split('').map(skipNonAlpha(f)).join('')

export { to_a0, from_a0, isAlpha, letterMap, increment_letter }
