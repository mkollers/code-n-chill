import React from 'react';
import { render } from 'react-testing-library';

import Question from './question';

describe("Question Component", () => {

  it('renders without crashing', () => {
    fetchMock.once(JSON.stringify({ "question": "Hello World?" }))

    const { getByText } = render(<Question id={1} />);
    expect(getByText("quest")).toBeTruthy();
  });

});
