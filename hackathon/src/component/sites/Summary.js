import React,{Component} from "react";
import queryString from 'query-string';

let Data = [];
class Summary extends Component{

    componentDidMount() {
        const values = queryString.parse(this.props.location.search)
        console.log(values);
        this.Data = values.data;
        console.log(this.Data);
    }
    render(){
        return (
         <section>
        {this.Data.map(data=> (
            <>
        <p key={data.id}>{data.value}</p>

        <div class="frame">
          <iframe
            src="https://maps.google.com/maps?q=&amp;output=embed"
          ></iframe>
        </div>
        </>
        ))}
        </section>
    )
    }
}

export default Summary;
