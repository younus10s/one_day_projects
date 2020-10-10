import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

function Clock(){
    const element = (
        <div>
        <h1 className="clock">{new Date().toLocaleTimeString()}</h1>
        <h1 className="date">{new Date().toLocaleDateString()}</h1>

        </div>
      );
      
      ReactDOM.render(
        element,
        document.getElementById('root')
      );
    }
  
  // ========================================
  setInterval(Clock, 1000);