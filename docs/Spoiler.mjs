const Spoiler = {
  props: ['summary', 'icon'],
  setup(props) {
    return { summary: props.summary, icon: props.icon }
  },
  template: `<details><summary>{{ summary }}</summary><span :class="icon"><slot/></span></details>`,
}

export default Spoiler
