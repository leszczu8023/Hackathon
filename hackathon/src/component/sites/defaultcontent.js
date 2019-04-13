import React,{Component} from "react";
import apiAuthenticate from "../../config.js"
import flag from "../../App.js"

class defaultcontent extends React.Component{
    constructor(props) {
        super(props);
        this.state = {
            login:'',
            password:'',
            isLoad:''
        };
        this.Change = this.Change.bind(this);
        this.ChangePassword = this.ChangePassword.bind(this);
        this.PostLog = this.PostLog.bind(this);
    }
    Change(e) {
    this.setState({
        login: e.target.value
    });
    }
    ChangePassword(e) {
    this.setState({
        password: e.target.value
    });
    }
    PostLog(e){
    e.preventDefault();
    fetch("http://192.168.137.1/api/authenticate.php",{method: 'POST',
    body: JSON.stringify({login: this.state.login, password: this.state.password})
    })
      .then(res => res.json())
      .then((res) => {
            this.setState({
                isLoad:res
            })
        }
      );
    this.flag = true;

    };
    render(){
        return (
        <section>
            <form id="PostLog" onSubmit={this.PostLog}>
                <label>Login</label><input type="text" name="login" value={this.state.login} onChange={this.Change}/>
                <label>Password</label><input type="password" name="password" value={this.state.password} onChange={this.ChangePassword}/>
                <input type="submit"/>
            </form>
        </section>
    )}
}
export default defaultcontent;
