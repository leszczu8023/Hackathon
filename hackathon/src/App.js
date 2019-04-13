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
