import React, { Component } from "react";

const hostname = "http://147.135.210.202/api/allactivities.php";


class Activity extends React.Component {
constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
}
state = {
    a:0,
    isSend: false,
    input: null
}

componentDidMount() {
        setInterval(()  =>  {
          Api();
          if(this.state.a>0){
            this.setState(() => {
              return{ input: <input type="submit"/>}
            })
          }
        }, 1000);
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
    children.push(<AddInput num={i}/>)
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
            src="https://maps.google.com/maps?q=Konstantego%20Bergiela%201%2C%2080-001%20Gda%C5%84sk&amp;output=embed"
          ></iframe>
        </div>
        <div class="frame">
          <iframe src="https://maps.google.com/maps?q=54.354750%2C%2018.543889&amp;output=embed"></iframe>
        </div>
      </div>
    );
  }else{
    return(
    <form action="https://hc.leszczu8023.ovh/api/action.php" method="post">
        {this.createInput()}
        <p onClick={this.handleClick}>Dodaj kolejną aktywność</p>
        {this.state.input}
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

let choices = [];
const AddInput = (props) => {
return (
    <>
    <select name={"browser"+props.num}>
    {choices.map((item,index) => {
        return (
            <option key={index} value={item.activityId}>{item.typeActivity}</option>
        );
    })}
    </select>

    </>
)
}
function Api (){
  console.log(hostname);
  fetch(hostname)
      .then(response => response.json())
      .then(
        result => {
        choices = result.responseObject;
        console.log(choices);
        },
        error => {
          console.log(error);
        }
      );
}
