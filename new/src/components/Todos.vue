<template>
  <div>
    <div v-bind:key="todo.id" v-for="todo in todos">
      <TodoItem
        class="todo"
        v-bind:todo="todo"
        v-bind:todos="todos"
        v-on:del-todo="$emit('del-todo', todo.id)"
      />
    </div>
  </div>
</template>

<script>
import TodoItem from "../components/TodoItem.vue";
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: "Todos",
  components: {
    TodoItem,
  },
  props: ["todos"],
};
</script>
<style scoped>
.todo {
  height: 50px;
  border-style: solid;
  border-radius: 10px;
  background-color: white;
  border-color: white;
  padding-left: 80px;
  padding-right: 150px;
}
</style>
