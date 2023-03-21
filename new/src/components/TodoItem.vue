<template>
  <div>
    <div class="todo-item" v-bind:class="{ 'is-complete': todo.completed }">
      <p>
        <input
          type="checkbox"
          v-on:change="markComplete"
          v-bind:checked="todo.completed"
        />
        {{ todo.title }} <br />
      </p>
    </div>
    <div v-if="this.flag">
      <form @submit="updateTodo">
        <div class="form-grp">
          <input type="text" v-model="updatedTitle" placeholder=" " />
        </div>
        <div class="form-grp">
          <button class="">update</button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: "TodoItem",
  props: ["todo", "todos"],
  methods: {
    markComplete() {
      // eslint-disable-next-line vue/no-mutating-props
      this.todo.completed = !this.todo.completed;
    },
    update() {
      this.flag = !this.flag;
    },
    updateTodo(e) {
      e.preventDefault();
      this.todos.filter((todo) => {
        if (todo.id == this.todo.id) {
          todo.title = this.updatedTitle;
        }
      });
      this.flag = false;
    },
    data() {
      return {
        flag: false,
        updatedTitle: "",
      };
    },
  },
};
</script>

<style scoped>
.todo-item {
  background: f4f4f4;
  padding: 10px;
}

.is-complete {
  text-decoration: line-through;
}

.update {
  border: none;
  padding: 5px 9px;
  padding-right: 10px;
  cursor: pointer;
  float: right;
}
.del {
  background: #ff0000;
  color: #fff;
  border: none;
  padding: 5px 9px;
  border-radius: 50%;
  cursor: pointer;
  float: right;
}

.description {
  padding-right: 180px;
}
</style>
