import { createApp } from 'vue'
import Entry from './Entry.mjs'
import Spoiler from './Spoiler.mjs'
import { episodes, discords } from './data.mjs'

const app = createApp({
  template: `
		<h1>Gravity Falls Cipher Hunt</h1>
		<section>
			<h2>Episodes</h2>
			<div class="entries">
				<Entry v-for="episode in episodes" :data="episode" />
			</div>
		</section>
		<section>
			<h2>Discord</h2>
			<div class="entries">
				<Entry v-for="discord in discords" :data="discord" />
			</div>
		</section>
	`,
  setup() {
    return { episodes, discords }
  },
})
app.component('Entry', Entry)
app.component('Spoiler', Spoiler)

app.mount('#app')
