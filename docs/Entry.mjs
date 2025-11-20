const Entry = {
  props: ['data'],
  setup(props) {
    return { ...props }
  },
  template: html`
    <div class="entry">
      <h3>{{ data.title }}</h3>
      <Spoiler icon="jigsaw" summary="Code">
        {{ data.codes.join(', ') }}
      </Spoiler>
      <Spoiler :icon="data.cipher" summary="Cipher">
        {{ data.cipher }}
      </Spoiler>
      <Spoiler v-if="data.key" icon="key" summary="Key">
        {{ data.key }}
      </Spoiler>
      <Spoiler icon="yay" summary="Answer">
        {{ data.answers.join(', ') }}
      </Spoiler>
    </div>
  `,
}

export default Entry
