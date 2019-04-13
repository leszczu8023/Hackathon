import React,{Component} from "react";

class defaultcontent extends React.Component{
    constructor(props) {
        super(props);
        this.state = {
            login:''
        };
        this.Change = this.Change.bind(this);
        this.PostLog = this.PostLog.bind(this);
    }
    Change(e) {
    console.log(e.target.value);
    this.setState({
        login: e.target.value
    });
    }
    PostLog(e){
    e.preventDefault();
    console.log(this.state);
    };
    render(){
        return (
        <section>
            <form id="PostLog" onSubmit={this.PostLog}>
                <label>Login</label><input type="text" name="login" value={this.state.login} onChange={this.Change}/>
                <label>Password</label><input type="password" name="password" value={this.state.password} onChange={this.Change}/>
                <input type="submit"/>
            </form>
        </section>
    )}
}
export default defaultcontent;
