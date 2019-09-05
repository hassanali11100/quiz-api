require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  setup do
    @quiz = quizzes(:one)
  end

  test "should save valid question" do
    assert_difference('Question.count', 1) do
      @question = @quiz.questions.new({text: 'This is a test quesiton'})
      @question.save
    end
  end

  test "should not save and invalid question" do
    assert_difference('Question.count', 0) do
      @question = @quiz.questions.new({})
      @question.save
    end
  end
end
