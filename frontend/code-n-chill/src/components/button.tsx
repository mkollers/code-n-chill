import React from 'react';
import { Link } from '@reach/router';


const Button = (probs: {title: string, nextId: number}) => {
    return (
       <Link to={'/question/' + probs.nextId} className="button_1">{probs.title}</Link>
    );
  }  

export default Button;