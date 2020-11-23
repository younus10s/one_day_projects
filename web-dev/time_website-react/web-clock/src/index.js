import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

class Clock extends React.Component{
  constructor(probs){
    super(probs);
    this.state = {
      time: new Date()
    };
  }
  
  componentDidMount(){
    {/* method to update timer*/}
    this.Interval = setInterval(
      () => {
        this.setState({time: new Date()})
      }, 1000
    );
  }

  componentWillUnmount() {
    {/* method to clear timer for not having memory leaked*/}
    clearInterval(this.Interval);
  }

  render() {
    var h = this.state.time.getHours()-1;
    var min = this.state.time.getMinutes();
    var sek = this.state.time.getSeconds();
    return(
      <div>
      <h1 className="clock">{h}:{min}:{sek}</h1>
      <h1 className="date">{new Date().toLocaleDateString()}</h1>

      </div>
    );
  }
    
}

class MainClass extends React.Component{
  render(){
    return (
      <div className="main">
        < Clock />
      </div>
    );
  }
}

  // ========================================
ReactDOM.render(
  <MainClass />,
  document.getElementById('root')
);
  
