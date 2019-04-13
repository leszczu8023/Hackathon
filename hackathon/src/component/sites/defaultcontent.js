import React, { Component } from "react";

const defaultcontent = () => {
    return (
        <section>
            <form method="post" action="/">
                <label>Login</label><input type="text" name="login"/>
                <label>Password</label><input type="password" name="password"/>
                <input type="submit"/>
            </form>
        </section>
    )
}
export default defaultcontent;
