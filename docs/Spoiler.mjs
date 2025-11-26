const Spoiler = {
   props: { summary: String, icon: String, index: Boolean, isOpen: Boolean },
   setup(props) {
      return { ...props }
   },
   template: html` <details :open="isOpen">
    <summary :class="{ index }">{{ summary }}</summary>
    <span :class="'i i-' + icon"><slot /></span>
  </details>`,
}

export default Spoiler
