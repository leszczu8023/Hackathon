<<<<<<< HEAD
import React, { Component } from "react";
import "./App.css";
import Header from "./component/header.js";
import Menu from "./component/menu.js";

class App extends Component {
  render() {
    return (
      <div className="App">
        <Header />
        <Menu />
      </div>
    );
  }
}

export default App;
=======
import React, { Component } from "react";
import "./App.css";
import Header from "./component/header.js";

class App extends Component {
  render() {
    return (
      <div className="App">
        <Header />
        <header className="App-header">Hello</header>
      </div>
    );
  }
}

export default App;
>>>>>>> 3506299f03840484cf38121ef52c119808cb3856
