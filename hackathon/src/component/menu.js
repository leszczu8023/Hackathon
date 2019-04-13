import React, { Component } from "react";
import { Link } from "react-router-dom";

class Menu extends Component {
    state = {
    name: null
  };

    render() {
    return <nav id="sidebar">
    <div class="sidebar-header">
        <h3>Tutaj nazwa appki będzie</h3>
    </div>

    <ul class="list-unstyled components">
        <p>{this.state.name}</p>
        <li>
            <Link to="/Main">Main</Link>
        </li>
        <li>
            <Link to="/About">About</Link>
        </li>
        <li>
            <Link to="/Comp1">Comp1</Link>
        </li>
        <li>
            <Link to="/Comp2">Comp2</Link>
        </li>
    </ul>

</nav>;
  }
}

export default Menu;
