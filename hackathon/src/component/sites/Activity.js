import React, { Component } from "react";


class Activity extends Component {
constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }
state = {
    a:1
}

componentDidMount() {
        setInterval(console.log(this.state.a), 1000);
      }
handleClick(e) {
    e.preventDefault();
    let b = this.state.a+1;
    this.setState({a:b});
    console.log(this.state.a);
  }
render() {
    return (
      <div>
        <form action="/action_page.php" method="get">

        <p onClick={this.handleClick}>Dodaj kolejną aktywność</p>
        </form>
      </div>
    );
  }
}

export default Activity;

const choices = [
    "pierwsza opcja",
    "druga opcja"
]
const AddInput = () => {
return (
    <>
    <input list="browsers" name="browser"/>
    <datalist id="browsers">
    {choices.map((item, index) => {
        return (
            <option key={index} value={item}>{item}</option>
        );
    })}
    </datalist>
    </>
)
}
