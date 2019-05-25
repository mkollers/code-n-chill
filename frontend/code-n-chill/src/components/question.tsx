import React from 'react';
import { RouteComponentProps } from '@reach/router'

type QuestionProps = RouteComponentProps & {
  id?: number
};

interface IQuestion {
  id: number
  question: string
  icon?: string
  answers: Array<{
    nextId: number,
    text: string
  }>
}

const Question = ({id}: QuestionProps) => {
  // useEffect(() => {
  //   fetch(`http://localhost:3000/nodes/${id}`)
  //     .then((resp) => {
  //       console.log(resp)
  //     })
  // }, [id])

  return (
    <div className="question">
      <h1>{id}</h1>
    </div>
  )
}

export default Question;
