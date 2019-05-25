import React, { useEffect, useState } from 'react';
import { RouteComponentProps } from '@reach/router';
import Button from './button';

type QuestionProps = RouteComponentProps & {
  id?: number
};

interface IQuestion {
  id: number
  content: string
  iconUrl: string
  answers: Array<{
    nextId: number,
    text: string
  }>
}

const Question = ({id}: QuestionProps) => {
    const[obj, setObj] = useState({answers:[{ }]} as  IQuestion);
  useEffect(() => {
    fetch(`http://localhost:8080/nodes/${id}`)
      .then((resp) => resp.json())
      .then((json) => {
          setObj(json);
      })
  }, [id])
console.log(obj.answers);
const buttons= []
var i;
if (obj.answers !== undefined){
for (i=0; i<obj.answers.length; i++){
    buttons.push(<Button key={i} title={obj.answers[i].text} nextId={obj.answers[i].nextId}/>)
}
}
  return (
    <div className="question">
      <h1>{obj.content}</h1>
      {buttons}

      
    </div>
  )
}

export default Question;
