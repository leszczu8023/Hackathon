
import React, { Component } from "react";
import "./App.css";
import Menu from "./component/menu.js";
import Main from "./component/main";
import { BrowserRouter } from "react-router-dom";

let flag = false;

class App extends Component {
  render() {
    return (
      <div className="App">
        <BrowserRouter>
        <Menu />
        <Main />
        </BrowserRouter>
      </div>
    );
  }
}

export default App;
