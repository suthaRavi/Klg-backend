require 'test_helper'

class CurrencyMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currency_master = currency_masters(:one)
  end

  test "should get index" do
    get currency_masters_url, as: :json
    assert_response :success
  end

  test "should create currency_master" do
    assert_difference('CurrencyMaster.count') do
      post currency_masters_url, params: { currency_master: { currency_code: @currency_master.currency_code, currency_description: @currency_master.currency_description, currency_id: @currency_master.currency_id, currency_image_url: @currency_master.currency_image_url, currency_status: @currency_master.currency_status, is_default_currency: @currency_master.is_default_currency } }, as: :json
    end

    assert_response 201
  end

  test "should show currency_master" do
    get currency_master_url(@currency_master), as: :json
    assert_response :success
  end

  test "should update currency_master" do
    patch currency_master_url(@currency_master), params: { currency_master: { currency_code: @currency_master.currency_code, currency_description: @currency_master.currency_description, currency_id: @currency_master.currency_id, currency_image_url: @currency_master.currency_image_url, currency_status: @currency_master.currency_status, is_default_currency: @currency_master.is_default_currency } }, as: :json
    assert_response 200
  end

  test "should destroy currency_master" do
    assert_difference('CurrencyMaster.count', -1) do
      delete currency_master_url(@currency_master), as: :json
    end

    assert_response 204
  end
end
