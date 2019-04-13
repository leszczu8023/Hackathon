
import React, { Component } from "react";
import "./App.css";
import Header from "./component/header.js";
import Menu from "./component/menu.js";
import { BrowserRouter } from "react-router-dom";


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
