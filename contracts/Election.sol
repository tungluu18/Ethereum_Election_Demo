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
}