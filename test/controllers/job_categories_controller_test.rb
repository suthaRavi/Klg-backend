require 'test_helper'

class JobCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_category = job_categories(:one)
  end

  test "should get index" do
    get job_categories_url, as: :json
    assert_response :success
  end

  test "should create job_category" do
    assert_difference('JobCategory.count') do
      post job_categories_url, params: { job_category: { code: @job_category.code, name: @job_category.name } }, as: :json
    end

    assert_response 201
  end

  test "should show job_category" do
    get job_category_url(@job_category), as: :json
    assert_response :success
  end

  test "should update job_category" do
    patch job_category_url(@job_category), params: { job_category: { code: @job_category.code, name: @job_category.name } }, as: :json
    assert_response 200
  end

  test "should destroy job_category" do
    assert_difference('JobCategory.count', -1) do
      delete job_category_url(@job_category), as: :json
    end

    assert_response 204
  end
end
