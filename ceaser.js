const min = 0
const max = 25
const a = 97

const to_a0 = c => c.charCodeAt(0) - a
const from_a0 = n => String.fromCharCode(n + a)

const increment_letter = (c, i) => c === ' '
	? ' '
	: from_a0((to_a0(c) + i) % 26)

const process = (s, i) => s.split('').map(c => increment_letter(c, i)).join('')

const ceaser = (input, key) => {
	if(key)
		return console.log(process(input, key))

	for(let i = min; i <= max; i++) {
		const result = process(input, i)
		console.log(`${i}:\t${result}`)
	}
}

export default ceaser
