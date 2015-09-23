require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "voter has name" do
    assert Voter.new(name: "Renee", party: "Bring Back Arrested Development Party").save
    refute Voter.new().save
  end

  test "voter has hometown" do
    assert Voter.new(name: "Renee", party: "Bring Back Arrested Development Party").save
    refute Voter.new(name: "Renee").save
  end

  test "voter has district" do
    assert Voter.new(name: "Renee", party: "Bring Back Arrested Development Party").save
    refute Voter.new(name: "Renee").save
  end

  test "voter has party" do
    assert Voter.new(name: "Renee", party: "Bring Back Arrested Development Party").save
    refute Voter.new(name: "Renee").save
  end

end
