require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "show A candidate" do
    get :show, id:candidates(:bern).id
    assert_response :success
    assert response.body.include?("FeelThe Bern")
    refute response.body.include?("Draco Malfoy")
  end

end
