var Election = artifacts.require('./Election.sol');

contract(Election, function(accounts) {
  it ("initializes with two candidates", () => {
    return Election.deployed().then((instance) => {
      return instance.candidatesCount()
    }).then((count) => {
      assert.equal(count, 2)
    })
  })

  it ("it initializes candidates with the correct values", () => {
    return Election.deployed().then((instance) => {
      electionInstance = instance
      return electionInstance.candidates(1)
    }).then((candidate) => {
      assert.equal(candidate[0], 1, "correct id")
      assert.equal(candidate[1], "Nguyen Phu Trong", "correct candidate's name")

      return electionInstance.candidates(2);
    }).then((candidate) => {
      assert.equal(candidate[0], 2, "correct id")
    })
  })
});