import React from "react"
//import ReactDom from "react-dom"
//import PropTypes from "prop-types"
class Main extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      fruits: []
    };
  }  componentDidMount(){
    fetch('https://api.covid19api.com/summary')
      .then((response) => {return response.json()})
      .then((data) => {this.setState({ fruits: data.Countries }) });
  }  render(){
  	var fruits = this.state.fruits.map((fruit) => {
  return(

   
   
  
    <tr>
    <td> <button type="button" className="btn btn-info">{fruit.Country}</button></td>
    <td>{fruit.NewConfirmed}</td>
     <td>{fruit.TotalConfirmed} </td>
     <td>{fruit.NewDeaths} </td>
     <td>{fruit.TotalDeaths}</td>
     <td>{fruit.NewRecovered}</td>
    <td>{fruit.TotalRecovered} </td>

    </tr>
   
  )
 })

    return(
      <table>
      <thead>
   <tr>
   <th>Country</th>
   <th>NewConfirmed</th>
   <th>TotalConfirmed</th>
   <th>NewDeaths</th>
   <th>TotalDeaths</th>
   <th>NewRecovered</th>
   <th>TotalRecovered</th>
   </tr>
   </thead>

        {fruits}
       </table>
   	
     )
   }

}

export default Main;

