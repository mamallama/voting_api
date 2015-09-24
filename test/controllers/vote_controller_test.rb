require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "voter has access" do
    vtr = Voter.first
    post :create, candidate_id: Candidate.first.id, voter_id: vtr.id
    refute vtr.vote
  end

  test "can vote happen?" do
    post :create
    assert_response :success
  end

  test "delete the vote" do
    vtr = Voter.first
    post :create, candidate_id: Candidate.first.id, voter_id: vtr.id, access_token: vtr.access_token
    assert vtr.reload.vote

    delete :destroy, access_token: vtr.access_token
    refute vtr.reload.vote
  end

end
