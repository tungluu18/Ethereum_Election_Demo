pragma solidity ^0.4.0;

contract Election {
  // Store Candidate
  // Read Candidate
  string public candidate;
  // Constructor
  function Election () public {
    candidate = "Candidate 1 - tungluu18";
  }
}