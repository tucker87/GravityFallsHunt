const offsets = [97, 65]

const to_a0 = c => {
  const value = c.charCodeAt(0)
  const isUpper = value < offsets[0]
  const offset = offsets[+isUpper]
  return { value: value - offset, offset }
}

const from_a0 = (n, offset) => String.fromCharCode(n + offset)

const isAlpha = c => c.match(/[a-zA-Z]/)

export { to_a0, from_a0, isAlpha }
