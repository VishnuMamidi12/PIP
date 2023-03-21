<template>
  <div></div>
</template>
<script>
export default {
  name: "AddTodo",
  data() {
    return {
      title: "",
      description: "",
    };
  },
  methods: {
    addTodo(e) {
      e.preventDefault();
      const newTodo = {
        title: this.title,
        description: this.description,
        completed: false,
      };
      // Send up to parent
      this.$emit("add-todo", newTodo);
      this.title = "";
      this.description = " ";
    },
  },
};
</script>

<style scoped>
form {
  display: flex;
}
input[type="text"] {
  flex: 10;
  padding: 5px;
}
input[type="submit"] {
  flex: 1;
}
</style>
