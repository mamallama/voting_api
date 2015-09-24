# Voting API

##Instructions:

At some point, this will give a completed API with Voter, Candidates, and Vote classes.
It will be able to track number of votes per candidate, make sure that voters only get to vote once,
and hey, maybe tell you who wins an election. Maybe.

### What I have so far:

 *Testing validations:*
 
 Candidate:
  ```ruby
  test "show A candidate" do
    get :show, id:candidates(:bern).id
    assert_response :success
    assert response.body.include?("FeelThe Bern")
    refute response.body.include?("Draco Malfoy")
  end
  ```

Voter:
  ```ruby
  test "voter has party" do
    assert Voter.new(name: "Renee", party: "Bring Back Arrested Development Party").save
    refute Voter.new(name: "Renee").save
  end
  ```
Voter has ONE vote: 
```ruby 
  test "voters have one vote" do
      vter = Voter.create(name: "Chicken Little", party: "Animal Party")
      v = Vote.new()
      vter.vote = v

      assert_equal v, Voter.find(vter.id).vote
   end
  end
```
Voter model creates access token: 

```ruby 
private def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end
```
My time estimate was off. I spent a good few hours on this and still need to work on it in order to be happy with the results. 
All in all, the program creates an authentication token, and I was able to test that it worked. And now it's time for bed.
