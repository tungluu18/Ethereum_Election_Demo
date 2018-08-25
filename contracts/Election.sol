pragma solidity ^0.4.2;

contract Election {
  // Model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  // Store Candidate

  // Fetch Candidate  
  mapping(uint => Candidate) public candidates;
  
  // Store accounts that have voted
  mapping(address => bool) public voters;

  // Store Candidate Count
  uint public candidatesCount;
  // Read Candidate
  string public candidate;
  
  function Election () public {
    addCandidate("Nguyen Phu Trong");
    addCandidate("Nguyen Tan Dung");
  }

  function addCandidate (string _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  function vote (uint _candidateId) public {
    // check whether account has voted
    require(!voters[msg.sender] == true);

    // candidate must be valid
    require(0 < _candidateId && _candidateId <= candidatesCount);

    // record that account has voted
    voters[msg.sender] = true;

    //vote for the candidate
    candidates[_candidateId].voteCount++;
  }
}