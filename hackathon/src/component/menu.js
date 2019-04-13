import React, { Component } from "react";
import { Link } from "react-router-dom";

class Menu extends Component {


    render() {
    return <nav id="sidebar" class="one-edge-shadow-left">
    <div class="sidebar-header">
        <h3>Menu</h3>
    </div>

    <ul class="list-unstyled components">
        <li>
            <Link to="/Main">Main</Link>
        </li>
        <li>
            <Link to="/About">About</Link>
        </li>
        <li>
            <Link to="/Activity">Wybór aktywności</Link>
        </li>
        <li>
            <Link to="/Comp2">Comp2</Link>
        </li>
    </ul>

</nav>;
  }
}

export default Menu;
