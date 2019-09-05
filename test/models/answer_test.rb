require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  setup do
    @question = questions(:ImranAge)
    @choice = choices(:sixtyTwo)
  end

  test "should create answer" do
    assert_difference('Answer.count', 1) do
      @answer = @question.build_answer(is_correct?: true, choice_id: @choice.id)
      @answer.save
    end
  end

  test "should not create answer" do
    assert_difference('Answer.count', 0) do
      @answer = @question.build_answer(is_correct?: true)
      @answer.save
    end
  end
end
