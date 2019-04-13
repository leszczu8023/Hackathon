import React, { Component } from "react";
import { Route, Switch } from "react-router-dom";
import About from "./sites/About.js";
import Err404 from "./sites/Err404.js";
import defaultcontent from "./sites/defaultcontent.js";
import Header from "./header.js";
import Activity from "./sites/Activity.js";
import Summary from "./sites/Summary.js";


class Main extends Component {
render() {
    return (
      <div>
        <Header />
        <Switch>
          <Route path="/" exact component={defaultcontent} />
          <Route path="/About" component={About} />
          <Route path="/Activity" component={Activity} />
          <Route path="/Summary" component={Summary} />
          <Route component={Err404} />
        </Switch>
      </div>
    );
  }
}

export default Main;
