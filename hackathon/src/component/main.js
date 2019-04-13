import React, { Component } from "react";
import { Route, Switch } from "react-router-dom";
import About from "./sites/About.js";
import Err404 from "./sites/Err404.js";
import defaultcontent from "./sites/defaultcontent.js";
import Header from "./header.js";


class Main extends Component {
  render() {
    return (
      <div>
        Main component
        <Header />
        <Switch>
          <Route path="/Main" exact component={defaultcontent} />
          <Route path="/" exact component={defaultcontent} />
          <Route path="/About" component={About} />
          <Route component={Err404} />
        </Switch>
      </div>
    );
  }
}

export default Main;
