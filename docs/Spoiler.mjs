const Spoiler = {
  props: ['summary'],
  setup(props) {
    return { summary: props.summary }
  },
  template: `<details><summary>{{ summary }}</summary><slot/></details>`,
}

export default Spoiler
