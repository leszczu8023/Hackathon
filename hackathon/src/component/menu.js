import React, { Component } from "react";
import { Link } from "react-router-dom";
import flag from "../App.js";

class Menu extends Component {
constructor(props){
super(props);
}
    render() {
    return (
    <nav id="sidebar" class="one-edge-shadow-left">
    <div class="sidebar-header">
        <h3>Menu</h3>
    </div>
    <IsLoggin />
</nav>
    );

  }
}
class IsLoggin extends Component {
componentDidMount() {
    setInterval(
        console.log(this.flag),
      1000
    );
}
render(){
console.log(flag);
if (flag==true) {
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
    }
export default Menu;
