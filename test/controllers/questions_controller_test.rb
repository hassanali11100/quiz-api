require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get quiz_questions_url(@quiz)
    assert :success
  end
end
