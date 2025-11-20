const Group = {
  props: ['group'],
  setup(props) {
    return { ...props }
  },
  template: html`
    <section>
      <h2>{{ group.title }}</h2>
      <div class="entries">
        <Entry v-for="entry in group.entries" :data="entry" />
      </div>
    </section>
  `,
}

export default Group
