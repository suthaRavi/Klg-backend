require 'test_helper'

class FulltimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fulltime = fulltimes(:one)
  end

  test "should get index" do
    get fulltimes_url, as: :json
    assert_response :success
  end

  test "should create fulltime" do
    assert_difference('Fulltime.count') do
      post fulltimes_url, params: { fulltime: { name: @fulltime.name, value: @fulltime.value } }, as: :json
    end

    assert_response 201
  end

  test "should show fulltime" do
    get fulltime_url(@fulltime), as: :json
    assert_response :success
  end

  test "should update fulltime" do
    patch fulltime_url(@fulltime), params: { fulltime: { name: @fulltime.name, value: @fulltime.value } }, as: :json
    assert_response 200
  end

  test "should destroy fulltime" do
    assert_difference('Fulltime.count', -1) do
      delete fulltime_url(@fulltime), as: :json
    end

    assert_response 204
  end
end
