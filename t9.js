const table9 = {
  ' ': [' '],
  2: ['a', 'b', 'c'],
  3: ['d', 'e', 'f'],
  4: ['g', 'h', 'i'],
  5: ['j', 'k', 'l'],
  6: ['m', 'n', 'o'],
  7: ['p', 'q', 'r', 's'],
  8: ['t', 'u', 'v'],
  9: ['w', 'x', 'y', 'z'],
}

const lookup = m => table9[m[0]][m.length - 1]

const t9 = s => {
  const matches = s.match(
    /([0-9]|\s)((?<=[0-6|8])\1{0,2}|(?<=[7|9])\1{0,3}|(?<=\s))/g,
  )
  return matches.reduce((ans, m) => ans + lookup(m), '')
}

export { t9 }
