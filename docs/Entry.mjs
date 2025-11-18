const Entry = {
  props: ['data'],
  setup(props) {
    return { data: props.data }
  },
  template: `
			<div class="entry">	
				<h3>{{ data.title }}</h3>
				<Spoiler icon="i i-jigsaw" summary="Code">{{ data.codes.join(', ') }}</Spoiler>
				<Spoiler :icon="'i i-' +data.cipher" summary="Cipher">{{ data.cipher }}</Spoiler>
				<Spoiler v-if="data.key" icon="i i-key" summary="Key">{{ data.key }}</Spoiler>
				<Spoiler icon="i i-yay" summary="Answer">{{ data.answers.join(', ') }}</Spoiler>
			</div>
			`,
}

export default Entry
