require "test_helper"

class CardSetCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get card_set_cards_index_url
    assert_response :success
  end
end
