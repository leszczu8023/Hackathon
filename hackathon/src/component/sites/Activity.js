import React, { Component } from "react";

class Activity extends Component {

    handleClick(e) {
    e.preventDefault();
    console.log('The link was clicked.');
  }
    render() {
    return (
      <div>
        <p onClick={this.handleClick}>Activity</p>
      </div>
    );
  }
}

export default Activity;
