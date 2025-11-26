import { createApp } from 'vue'
import Entry from './Entry.mjs'
import Spoiler from './Spoiler.mjs'
import Group from './Group.mjs'
import { groups } from './data.mjs'

window.groups = groups

const app = createApp({
   template: html`
    <h1>Gravity Falls Cipher Hunt</h1>
    <Group v-for="group in groups" :group="group" />
  `,
   setup() {
      return { groups }
   },
})
app.component('Entry', Entry)
app.component('Spoiler', Spoiler)
app.component('Group', Group)

app.mount('#app')
