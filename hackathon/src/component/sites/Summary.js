import React,{Component} from "react";
import queryString from 'query-string';


class Summary extends Component{
state = {
    data :[]
}
    componentWillMount() {
        const values = queryString.parse(this.props.location.search)
        console.log(values);
        if (values.state === "ok") {
            this.state.data = JSON.parse(values.data);
            console.log(this.state.data);
            this.state.int = 0;
        }
        else if (values.state === "empty") {
            this.state.int = 1;
        }
        else {
            this.state.int = 2;
        }
        
    }
    render(){
        if (this.state.int === 0) {
            return (
                <section>
                    {this.state.data.map(data => (
                        <div>
                        <p key={data.id}>{data.value}</p>
                           {data.addresses.map(data=>(
                               <div class="frame" key={data.activityId}>
                               <iframe src={"https://maps.google.com/maps?q="+data.location.toString().replace(" ","")+"&output=embed"}></iframe>
                               </div>
                           ))}
                        </div>
                        ))}
               </section>);
        }    
        else {
            return (this.state.int === 1) ? "Brak dopasowanych danych dla Ciebie... Zajrzyj ponownie wkrótce!" : "Błąd wewnętrzny serwera, spróbuj ponownie później!";
        }
    }
}

export default Summary;
