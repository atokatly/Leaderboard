require 'test_helper'

class ChallengeboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challengeboard = challengeboards(:one)
  end

  test "should get index" do
    get challengeboards_url
    assert_response :success
  end

  test "should get new" do
    get new_challengeboard_url
    assert_response :success
  end

  test "should create challengeboard" do
    assert_difference('Challengeboard.count') do
      post challengeboards_url, params: { challengeboard: { name: @challengeboard.name } }
    end

    assert_redirected_to challengeboard_url(Challengeboard.last)
  end

  test "should show challengeboard" do
    get challengeboard_url(@challengeboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_challengeboard_url(@challengeboard)
    assert_response :success
  end

  test "should update challengeboard" do
    patch challengeboard_url(@challengeboard), params: { challengeboard: { name: @challengeboard.name } }
    assert_redirected_to challengeboard_url(@challengeboard)
  end

  test "should destroy challengeboard" do
    assert_difference('Challengeboard.count', -1) do
      delete challengeboard_url(@challengeboard)
    end

    assert_redirected_to challengeboards_url
  end
end
