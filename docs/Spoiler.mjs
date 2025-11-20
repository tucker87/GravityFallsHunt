const Spoiler = {
  props: ['summary', 'icon'],
  setup(props) {
    return { ...props }
  },
  template: html` <details>
    <summary>{{ summary }}</summary>
    <span :class="'i i-' + icon"><slot /></span>
  </details>`,
}

export default Spoiler
