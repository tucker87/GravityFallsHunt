import { ref } from 'vue'
const Spoiler = {
   props: { summary: String, icon: String, index: Boolean, isOpen: Boolean },
   setup(props) {
      const show = ref(false)
      return { ...props, show }
   },
   template: html`
   <div class="spoiler" @click="show = !show">
    <label :class="{ index }">{{ summary }}</label>
    <span :class="'i i-' + icon" :class="{ spoil: isOpen || show }"><slot /></span>
  </div>`,
}

export default Spoiler
