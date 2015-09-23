require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "candidate has name" do
    assert Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA", party: "Bleeding Heart Single Moms Party").save
    refute Candidate.new().save
  end

  test "candidate has hometown" do
    assert Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA", party: "Bleeding Heart Single Moms Party").save
    refute Candidate.new(name: "FeelThe Bern", district: "SHIMOKITAZAWA").save
  end

  test "candidate has district" do
    assert Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA", party: "Bleeding Heart Single Moms Party").save
    refute Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn").save
  end

  test "candidate has party" do
    assert Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA", party: "Bleeding Heart Single Moms Party").save
    refute Candidate.new(name: "FeelThe Bern", hometown: "Brooklyn", district: "SHIMOKITAZAWA").save
  end

  

end
