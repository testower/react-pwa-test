import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            This is a demo app from:
          </p>
          <a
            className="App-link"
            href="https://tomerikstower.com/react-pwa-aws"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn how to publish a Create React App PWA on AWS
          </a>
        </header>
      </div>
    );
  }
}

export default App;
