const Entry = {
  props: ['data'],
  setup(props) {
    return { data: props.data }
  },
  template: `
			<h3>{{ data.title }}</h3>
			
			<Spoiler summary="Code">🧩 {{ data.codes.join(', ') }}</Spoiler>
			<Spoiler summary="Cipher">{{ data.cipher }}</Spoiler>
			<Spoiler v-if="data.key" summary="Key">🔑 {{ data.key }}</Spoiler>
			<Spoiler summary="Answer">🎉 {{ data.answers.join(', ') }}</Spoiler>
			`,
}

export default Entry
