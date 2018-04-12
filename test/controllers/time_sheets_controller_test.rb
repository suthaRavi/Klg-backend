require 'test_helper'

class TimeSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_sheet = time_sheets(:one)
  end

  test "should get index" do
    get time_sheets_url, as: :json
    assert_response :success
  end

  test "should create time_sheet" do
    assert_difference('TimeSheet.count') do
      post time_sheets_url, params: { time_sheet: { first_name: @time_sheet.first_name } }, as: :json
    end

    assert_response 201
  end

  test "should show time_sheet" do
    get time_sheet_url(@time_sheet), as: :json
    assert_response :success
  end

  test "should update time_sheet" do
    patch time_sheet_url(@time_sheet), params: { time_sheet: { first_name: @time_sheet.first_name } }, as: :json
    assert_response 200
  end

  test "should destroy time_sheet" do
    assert_difference('TimeSheet.count', -1) do
      delete time_sheet_url(@time_sheet), as: :json
    end

    assert_response 204
  end
end
