# Voting API

##Instructions:

At the end, this will give a completed API with Voter, Candidates, and Vote classes.
It will be able to track number of votes per candidate, make sure that voters only get to vote once,
and hey, maybe tell you who wins an election.

### What I have so far:

 *Testing validations:*
 
 Candidate:
  ```ruby
  test "candidate has party" do
    assert Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA", party: "Bleeding Heart Single Moms Party").save
    refute Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA").save
  end
  ```

Voter:
  ```ruby
  test "voter has party" do
    assert Voter.new(name: "Renee", party: "Bring Back Arrested Development Party").save
    refute Voter.new(name: "Renee").save
  end
  ```
