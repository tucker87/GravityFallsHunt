import { createApp } from 'vue'
import Entry from './Entry.mjs'
import Spoiler from './Spoiler.mjs'
import { episodes, discords } from './data.mjs'

const app = createApp({
  setup() {
    return { episodes, discords }
  },
})
app.component('Entry', Entry)
app.component('Spoiler', Spoiler)

app.mount('#app')
