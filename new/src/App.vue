<template>
  <div class="top">
    <div class="left-bar">
      <div class="border">
        <ul>
          <li><img class="img" src="./assets/logo.png" />Hello</li>
          <li class="li-2">Vishnu Kumar</li>
          <h5><i class="fa-solid fa-calendar-plus"></i> Today Tasks</h5>
          <li class="circle-1">
            <i class="fa fa-circle" aria-hidden="true"></i> Personal
          </li>
          <li class="circle-2">
            <i class="fa fa-circle" aria-hidden="true"></i> FreeLance
          </li>
          <li class="circle-3">
            <i class="fa fa-circle" aria-hidden="true"></i> Work
          </li>
          <li><i class="fa fa-plus-circle" aria-hidden="true"></i>Add Task</li>
          <li>Scheduled Tasks</li>
          <li><i class="fa-sharp fa-solid fa-gear"></i> Settings</li>
        </ul>
      </div>
      <div class="right-bar">
        <div class="p">
          <p class="p1">
            <i class="fa fa-circle" style="color: cyan"></i>
            <i class="fa fa-circle"> </i>
            There are two many people in the ground
          </p>
          <br />
          <p class="p2">
            <i class="fa fa-circle"></i>
            <i class="fa fa-circle" style="color: cyan"></i> We need to move
            from this place
          </p>
          <br />
          <p class="p3">
            <i class="fa fa-circle"></i>
            <i class="fa fa-circle" style="color: cyan"> </i> We need to check
            this out asap
          </p>
          <br />
          <p class="p4">
            <i class="fa fa-circle"></i>
            <i class="fa fa-circle" style="color: cyan"></i>
            This is the place that everyone likes
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
//import Hello from "./components/Hello.vue";
//import Header from "./components/layout/Header.vue";
//import Todos from "./components/Todos.vue";
//import AddTodo from "./components/AddTodo.vue";
export default {
  name: "App",
  components: {
    // Hello,
    // Header,
    //Todos,
    //AddTodo,
  },
  data() {
    return {
      todos: [
        {
          id: 1,
          title: "Todo One",
          description: "Okay",
          completed: false,
        },
        {
          id: 2,
          title: "Todo Two",
          description: "Alas",
          completed: true,
        },
        {
          id: 3,
          title: "Todo Three",
          description: "Oh My God",
          completed: false,
        },
      ],
    };
  },
  methods: {
    deleteTodo(id) {
      this.todos = this.todos.filter((todo) => todo.id != id);
    },
    addTodo(newTodo) {
      this.todos = [...this.todos, newTodo];
    },
  },
};
</script>

<style scoped>
.top {
  background-color: #a086fb;
  padding-left: 190px;
}
.top h2 {
  color: white;
  text-align: center;
}
.border ul {
  padding-bottom: 60px;
}
.border {
  background-color: white;
  border-style: solid;
  border-radius: 10px;
  border-width: 5px;
  border-color: white;
  border-top-right-radius: 0%;
  border-bottom-right-radius: 0%;
}
.left-bar {
  padding-top: 90px;
  padding-bottom: 90px;
  padding-left: 60px;
  padding-right: 30px;
}
.add-todo {
  padding-top: 25px;
  padding-right: 10px;
}
.todos {
  padding-right: 10px;
  padding-top: 10px;
  height: 2px;
}
.left-bar {
  transition: background-color 300ms;
  display: flex;
}
.border .img {
  max-width: 5%;
  border-radius: 50%;
}
.border ul li {
  height: 40px;
}
.border .li-2 {
  padding-left: 15px;
}
.left-bar ul li {
  list-style-type: none;
}
.down-bar h4 {
  padding-left: 30px;
}
.down-bar ul li {
  height: 35px;
}
.fa-circle {
  color: pink;
}
.circle-2 .fa-circle {
  color: cyan;
}
.circle-3 .fa-circle {
  color: yellow;
}
.right-bar {
  background-color: #a18aff;
  padding-left: 90px;
  border-style: solid;
  border-color: white;
  border-width: 5px;
  border-radius: 10px;
  border-top-left-radius: 0%;
  border-bottom-left-radius: 0%;
}
.right-bar h3 {
  color: white;
  font-family: Arial, Helvetica, sans-serif;
}
.right-bar h4 {
  padding-bottom: px;
  color: white;
  font-family: Arial, Helvetica, sans-serif;
}
.fa-calendar-plus {
  color: pink;
}
.p {
  padding-right: 50px;
  padding-top: 50px;
}
.p1 {
  background-color: white;
  border-style: solid;
  border-radius: 15px;
  border-color: white;
  height: 30px;
  padding-top: 10px;
  padding-right: 50px;
  padding-left: 50px;
}

.p2 {
  background-color: white;
  border-style: solid;
  border-radius: 15px;
  border-color: white;
  height: 30px;
  padding-top: 10px;
  padding-right: 50px;
  padding-left: 50px;
}
.p3 {
  background-color: white;
  border-style: solid;
  border-radius: 15px;
  border-color: white;
  height: 30px;
  padding-top: 10px;
  padding-right: 50px;
  padding-left: 50px;
}
.p4 {
  background-color: white;
  border-style: solid;
  border-radius: 15px;
  border-color: white;
  height: 30px;
  padding-top: 10px;
  padding-right: 50px;
  padding-left: 50px;
}
</style>
