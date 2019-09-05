require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
    @question = questions(:one)
  end

  test "should get index" do
    get quiz_questions_url(@quiz)
    assert :success
  end

  test "should create quesiton" do
    assert_difference('Question.count') do
      post quiz_questions_url(@quiz), params: { text: @question.text }, as: :json
    end
  end

  test "should delete quesiton" do
    assert_difference('Question.count', -1) do
      delete quiz_question_url(@quiz, @question)
    end

    assert_response 204
  end
end
