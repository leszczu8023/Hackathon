import React, { Component } from "react";
import { Link } from "react-router-dom";

class Menu extends Component {
constructor(props){
super(props);
}
state = {
    flag:true
}
    render() {
    return (
    <nav id="sidebar" class="one-edge-shadow-left">
    <div class="sidebar-header">
        <h4>Menu główne</h4>
    </div>
    <IsLoggin type={this.state.flag}/>
</nav>
    );

  }
}
const IsLoggin = (props) => {
return(

    <ul class="list-unstyled components">
        <li>
            <Link to="/About">O Projekcie</Link>
        </li>
        <li>
            <Link to="/Activity">Wybór aktywności</Link>
        </li>
        <li>
            <Link to="/">Strona Powitalna</Link>
        </li>
    </ul>

);
}

export default Menu;
