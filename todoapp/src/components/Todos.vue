<template>
  <div>
    <div v-bind:key="todo.id" v-for="todo in todos">
      <TodoItem v-bind:todo="todo" v-on:del-todo="$emit('del-todo', todo.id)" />
    </div>
  </div>
</template>

<script>
import TodoItem from "./Todoitem.vue";
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Todos",
  components: {
    TodoItem,
  },
  props: ["todos"],
};
</script>
