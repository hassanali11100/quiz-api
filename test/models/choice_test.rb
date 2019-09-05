require 'test_helper'

class ChoiceTest < ActiveSupport::TestCase
  setup do
    @question = questions(:ImranAge)
  end

  test "should create valid choice" do
    assert_difference('Choice.count', 1) do
      @choice = @question.choices.new({text: 65, is_correct?: false})
      @choice.save
    end
  end

  test "should not create and invalid choice" do
    assert_difference('Choice.count', 0) do
      @choice = @question.choices.new({text: 65})
      @choice.save
    end
  end
end
