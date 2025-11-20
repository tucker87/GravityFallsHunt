import { ref } from 'vue'

const useState = init => {
  const state = ref(!!init)
  const toggle = () => {
    state.value = !state.value
  }
  return [state, toggle]
}

const Entry = {
  props: ['data'],
  setup(props) {
    const [isOpen, toggleOpen] = useState()
    return { ...props, state: { isOpen }, toggleOpen }
  },
  template: html`
    <div class="entry">
      <h3 style="cursor: pointer" @click="toggleOpen">{{ data.title }}</h3>
      <div class="index-start">
        <Spoiler
          :index="data.answers.length > 1"
          v-for="code in data.codes"
          icon="jigsaw"
          summary="Code"
          :isOpen="state.isOpen"
        >
          <div>{{ code }}</div>
        </Spoiler>
      </div>
      <Spoiler :icon="data.cipher" summary="Cipher" :isOpen="state.isOpen">
        {{ data.cipher }}
      </Spoiler>
      <Spoiler v-if="data.key" icon="key" summary="Key" :isOpen="state.isOpen">
        {{ data.key }}
      </Spoiler>
      <div class="index-start">
        <Spoiler
          :index="data.answers.length > 1"
          v-for="answer in data.answers"
          icon="yay"
          summary="Answer"
          :isOpen="state.isOpen"
        >
          <div>{{ answer }}</div>
        </Spoiler>
      </div>
    </div>
  `,
}

export default Entry
