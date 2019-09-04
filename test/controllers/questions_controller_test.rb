require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quiz_questions_url(@quiz)
    assert :success
  end

  test "should create quesiton" do
    @question = questions(:one)
    assert_difference('Question.count') do
      post quiz_questions_url(@quiz), params: { text: @question.text }, as: :json
    end
  end
end
