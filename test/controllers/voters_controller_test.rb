require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "create a Voter" do
    post :create, name: "Mulan", party: "We are Men Party"
    assert_response :success
  end

  test "auth token stuff" do
    get :show, :access_token #?????
    assert_response :success
  end
end
