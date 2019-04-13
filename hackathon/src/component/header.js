import React, { Component } from "react";

class Header extends Component {
  render() {
    return <div class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Activity name here</a>
      <button id="togglebutton" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>;
  }
}

export default Header;
