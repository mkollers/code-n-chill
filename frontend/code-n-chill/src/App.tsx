import React from 'react';

import { Router, RouteComponentProps, Link } from '@reach/router';

import logo from './logo.png';
import './App.css';

import Question from './components/question';

const Home = (props: RouteComponentProps) => (
  <div>
    <h1>Welcome</h1>
    <Link to="/question">Start</Link>
  </div>
)

const App: React.FC = () => {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
      </header>
      <Router>
        <Home path="/" />
        <Question path="/question/:id" />
      </Router>
    </div>
  );
}

export default App;
