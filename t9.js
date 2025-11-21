const table9 = {
  2: ['a', 'b', 'c'],
  3: ['d', 'e', 'f'],
  4: ['g', 'h', 'i'],
  5: ['j', 'k', 'l'],
  6: ['m', 'n', 'o'],
  7: ['p', 'q', 'r', 's'],
  8: ['t', 'u', 'v'],
  9: ['w', 'x', 'y', 'z'],
}

const t9 = s => {
  let prev = null
  let count = 0
  let answer = ''

  for (const c of s) {
    if (c === prev) {
      count++
    } else {
      if (prev !== null) {
        answer += table9[prev][count]
      }
      prev = c
      count = 0

      if (!c.match(/[0-9]/)) {
        answer += c
        prev = null
        continue
      }
    }
  }

  answer += table9[prev][count]

  console.log(answer)
}

export { t9 }
