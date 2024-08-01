require "test_helper"

class PokerFaceControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get poker_face_name:string_url
    assert_response :success
  end

  test "should get batch_id:integer" do
    get poker_face_batch_id:integer_url
    assert_response :success
  end

  test "should get address:string" do
    get poker_face_address:string_url
    assert_response :success
  end
end
