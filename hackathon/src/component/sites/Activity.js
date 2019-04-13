import React, { Component } from "react";


class Activity extends React.Component {
constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
}
state = {
    a:1,
    isSend: true
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
createInput = () => {
    let children = []
    for (let i = 0; i < this.state.a; i++) {
    children.push(<AddInput />)
      }
    return children
}
IsSend = () => {
  if(this.state.isSend){
    return (
      <div>
        <p>Bieganie</p>
        <div class="frame">
          <iframe
            src="https://maps.google.com/maps?width=600&amp;height=440&amp;hl=en&amp;q=Konstantego%20Bergiela%201%2C%2080-001%20Gda%C5%84sk+(Bieganie)&amp;ie=UTF8&amp;t=&amp;z=15&amp;iwloc=B&amp;output=embed"
            frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
        </div>
        <div class="frame">
          <iframe src="https://maps.google.com/maps?width=600&amp;height=440&amp;hl=en&amp;q=54.354750%2C%2018.543889+(Bieganie)&amp;ie=UTF8&amp;t=&amp;z=15&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
        </div>
      </div>
    );
  }else{
    return(
    <form action="/action_page.php" method="get">
        {this.createInput()}
        <p onClick={this.handleClick}>Dodaj kolejną aktywność</p>
    </form>
    )
  }
}
render() {
    return (
      <div>
        {this.IsSend()}
      </div>
    );
  }
}

export default Activity;

const choices = [
    "pierwsza opcja",
    "druga opcja",
    "trzecia opcja"
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
