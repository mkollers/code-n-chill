import React, { useEffect, useState } from 'react';
import { RouteComponentProps } from '@reach/router';
import Button from './button';

type QuestionProps = RouteComponentProps & {
  id?: string
};

interface IQuestion {
  id: string
  content: string
  iconUrl: string
  answers: Array<{
    nextId: number,
    text: string
  }>
};

const Question = ({id}: QuestionProps) => {
  id = id || ""

  const [obj, setObj] = useState({answers:[{ }]} as  IQuestion);

  useEffect(() => {
    fetch(`http://localhost:8080/nodes/${id}`)
      .then((resp) => resp.json())
      .then((json) => {
        setObj(json);
      })
  }, [id]);

  const buttons = (obj.answers)
    ? obj.answers.map((q, i) => <Button key={i} title={q.text} nextId={q.nextId}/>)
    : [];

  return (
    <div className="question">
      <h1>{obj.content}</h1>
      {obj.iconUrl ? <img src={obj.iconUrl} alt="Icon" className="icon" /> : null}
      {buttons}
    </div>
  )
}

export default Question;
