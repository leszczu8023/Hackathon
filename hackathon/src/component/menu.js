import React, { Component } from "react";
import { Link } from "react-router-dom";

class Menu extends Component {
    state = {
        isLog : 1
    }

    render() {
    return (
<nav id="sidebar" class="one-edge-shadow-left">
    <div class="sidebar-header">
        <h3>Menu</h3>
    </div>
    <IsLoggin log={this.state.isLog}/>
</nav>
    );

  }
}
const IsLoggin = (props) => {
if (props.log>0) {
return(

    <ul class="list-unstyled components">
        <li>
            <Link to="/About">About</Link>
        </li>
        <li>
            <Link to="/Activity">Wybór aktywności</Link>
        </li>
        <li>
            <Link to="/Comp2">Comp2</Link>
        </li>
        <li>
            <Link to="/Summary">Podsumowanie</Link>
        </li>
    </ul>

);
}
else{
    return (
        <ul class="list-unstyled components">
        <li>
            <Link to="/">Zaloguj się</Link>
        </li>
        </ul>
        );
}
}
export default Menu;
