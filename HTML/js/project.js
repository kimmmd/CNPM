fetch("http://127.0.0.1:6868/todo")
  .then(res => res.json())
  .then(data => console.log(data));
