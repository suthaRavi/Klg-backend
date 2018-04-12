require 'test_helper'

class JobTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_time = job_times(:one)
  end

  test "should get index" do
    get job_times_url, as: :json
    assert_response :success
  end

  test "should create job_time" do
    assert_difference('JobTime.count') do
      post job_times_url, params: { job_time: { job_category: @job_time.job_category, job_department: @job_time.job_department, job_id: @job_time.job_id } }, as: :json
    end

    assert_response 201
  end

  test "should show job_time" do
    get job_time_url(@job_time), as: :json
    assert_response :success
  end

  test "should update job_time" do
    patch job_time_url(@job_time), params: { job_time: { job_category: @job_time.job_category, job_department: @job_time.job_department, job_id: @job_time.job_id } }, as: :json
    assert_response 200
  end

  test "should destroy job_time" do
    assert_difference('JobTime.count', -1) do
      delete job_time_url(@job_time), as: :json
    end

    assert_response 204
  end
end
