require "test_helper"

class CardSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card_set = card_sets(:one)
  end

  test "should get index" do
    get card_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_card_set_url
    assert_response :success
  end

  test "should create card_set" do
    assert_difference("CardSet.count") do
      post card_sets_url, params: { card_set: { name: @card_set.name } }
    end

    assert_redirected_to card_set_url(CardSet.last)
  end

  test "should show card_set" do
    get card_set_url(@card_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_set_url(@card_set)
    assert_response :success
  end

  test "should update card_set" do
    patch card_set_url(@card_set), params: { card_set: { name: @card_set.name } }
    assert_redirected_to card_set_url(@card_set)
  end

  test "should destroy card_set" do
    assert_difference("CardSet.count", -1) do
      delete card_set_url(@card_set)
    end

    assert_redirected_to card_sets_url
  end
end
