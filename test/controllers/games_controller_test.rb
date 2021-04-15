require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get games" do
    get games_games_url
    assert_response :success
  end

end
