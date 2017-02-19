require 'test_helper'

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get applicants_url, as: :json
    assert_response :success
  end

  test "should create applicant" do
    assert_difference('Applicant.count') do
      post applicants_url, params: { applicant: { email: @applicant.email, location: @applicant.location, name: @applicant.name, summary: @applicant.summary, title: @applicant.title } }, as: :json
    end

    assert_response 201
  end

  test "should show applicant" do
    get applicant_url(@applicant), as: :json
    assert_response :success
  end

  test "should update applicant" do
    patch applicant_url(@applicant), params: { applicant: { email: @applicant.email, location: @applicant.location, name: @applicant.name, summary: @applicant.summary, title: @applicant.title } }, as: :json
    assert_response 200
  end

  test "should destroy applicant" do
    assert_difference('Applicant.count', -1) do
      delete applicant_url(@applicant), as: :json
    end

    assert_response 204
  end
end
