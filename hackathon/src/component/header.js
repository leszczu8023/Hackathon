import React, { Component } from "react";
import { Link } from "react-router-dom";

class Header extends Component {
  state = {
    name: null
  }
  componentDidMount() {
        setInterval(() => {
            this.setState(() => {
                return { name: window.location.pathname }
            });
        }, 1000);
      }
  render() {
    return <div class="one-edge-shadow navbar navbar-dark bg-dark">
      <Link to={this.state.name} class="navbar-brand">{this.state.name}</Link>
      <button id="togglebutton" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>;
  }

}

export default Header;
