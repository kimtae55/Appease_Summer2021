import React, { useState } from 'react';
import styled from 'styled-components';
import Select from 'react-select';
import ModelButton from './model-page-button'
import DatePicker from './date-picker'
import { getToken, getUser } from '../utils/common';

// Stying for div encompassing all other elements of the page.
const OuterDiv = styled.div`
  margin-top: 20px;
  display: inline-block;
  justify-content: center;
`;

// Stying for div encompassing query results and result title.
const ResultDiv = styled.div`
  width: 360px;
  height: 40vh;
  background-color: #DCDCDC;
  margin-left: 0;
  margin-right: auto;
  margin-top: 0;
  overflow: scroll;
`;

// Stying for element for displaying query results.
const ResultText = styled.p`
  text-align: left;
  margin: 10px 10px 10px 10px;
  overflow-wrap: break-word;
  white-space: pre-line;
`

// Styling for an individual horizontal subsection of the page.
const RowDiv = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
`

// Options for the query parameter selection dropdown.
const options = [
  { value: 'heartrate', label: 'Heart Rate' },
  { value: 'stepcount', label: 'Step Count' },
  { value: 'distance', label: 'Distance Travelled' },
  { value: 'all', label: 'All' },
];

const game_options = [
  { value: 'Angry-Birds', label: 'Angry Birds' },
  { value: 'Clash-of-Clans', label: 'Clash of Clans' },
  { value: 'Brawl-Stars', label: 'Brawl Stars' },
  { value: 'Injustice-2', label: 'Injustice 2' },
  { value: 'Catan', label: 'Catan' },
];

// Endpoint for Django app used for sending requests for data querying.
const BACKEND_QUERY = 'http://192.168.1.66:8000/api/query/'
/**
 * Component for the query page of the application.
 */


function Query(){
  // Stores/updates the query parameter selected by the user.
  const [selectedOption, setSelectedOption] = useState(null);
  // Store/updates the start and end dates for desired data.
  const [startDate, setStartDate] = useState();
  const [endDate, setEndDate] = useState();

  // Stores/updates whether a request from the network for query results is loading.
  const [loading, setLoading] = useState(false);

  // Stores/updates the results for the most recent query request.
  const [results, setResults] = useState(null);

  function request(){
    var start = startDate.toLocaleDateString().replaceAll("/", "-");
    var end = endDate.toLocaleDateString().replaceAll("/", "-");
    const token = getToken();
    const name = getUser();

    var url = BACKEND_QUERY + token + "/" + selectedOption + "/" + start + "/" + end + "/";

    setLoading(true);
    fetch(url, {
      method: 'GET',
    })
      .then(response => response.blob())
      .then(image => {
          // Remove local image blob if a new visualization was created.
          if (results){
            URL.revokeObjectURL(results);
          }
          var imageURL = URL.createObjectURL(image);
          setResults(imageURL);
        }
      );
  }

  return (
    <OuterDiv>
      {/*section containing parameter dropdown and button for initiating data querying*/}
      <DatePicker startDate={startDate} setStartDate={setStartDate} endDate={endDate} setEndDate={setEndDate}/>
      <RowDiv>
        <div style={{width: "200px"}}>
          <Select
            menuPortalTarget={document.body}
            menuPosition={'fixed'}
            defaultValue={selectedOption}
            onChange={e => setSelectedOption(e.value)}
            options={options}
            placeholder={'Select parameter'}
          />
        </div>
        <ModelButton
          active={selectedOption && startDate && endDate}
          handleClick={request}
          label={"Query Data"}/>
      </RowDiv>

      <div style={{marginTop: "20px"}}>
        <h2 style={{textAlign: "left", marginBottom: "5px"}}>Visualization Results</h2>
        {results?
          <img src={results} alt="Visual" width="360px" />
          :
          <ResultText>
            <i> Requested visualization will show here. </i>
          </ResultText>
        }
      </div>
    </OuterDiv>
  );
}


export default Query;
