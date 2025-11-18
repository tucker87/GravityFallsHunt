const offsets = [97, 65]

const to_a0 = c => { 
	const value = c.charCodeAt(0)
	const isUpper = value < offsets[0]
	const offset = offsets[+isUpper]
	return { value: value - offset, offset }
}

const swap_letter = c => {
	if (!c.match(/[a-zA-Z]/))
		return c

	let {value, offset} = to_a0(c)
	return String.fromCharCode(Math.abs(value - 25) + offset)
}

const atBash = input => {
	const result = input.split('').map(swap_letter).join('')
	console.log(result)
}

export default atBash
