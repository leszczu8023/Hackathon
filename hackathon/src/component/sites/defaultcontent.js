import React,{Component} from "react";
import { Link } from "react-router-dom";

class defaultcontent extends React.Component{
render(){
        return (
        <section>
            <h2>Witaj w naszej aplikacji!</h2>
            <Link id="start" to="/Activity">kliknij tutaj aby rozpocząć</Link>
            <p>Lub skorzystaj z naszego menu</p>
        </section>
    )}
}
export default defaultcontent;
