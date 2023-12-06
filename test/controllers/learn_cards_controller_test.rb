require "test_helper"

class LearnCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get learn_cards_show_url
    assert_response :success
  end

  test "should get update" do
    get learn_cards_update_url
    assert_response :success
  end
end
