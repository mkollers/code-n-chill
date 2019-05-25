import React from 'react';

const Question = (probs: {quest: string}) => {
    return (
       <h1>{probs.quest}</h1>
    );
  }

  export default Question;