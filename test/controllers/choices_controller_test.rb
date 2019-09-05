require 'test_helper'

class ChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:ImranBiography)
    @question = questions(:ImranAge)
  end

  test "should get index" do
    get quiz_question_choices_url(@quiz, @question)
    assert_response :success
  end

  test "should create a choice" do
    assert_difference('Choice.count', 1) do
      post quiz_question_choices_url(@quiz, @question), params: { text: '77', is_correct?: false }, as: :json
    end

    assert_response 201
  end

  test "should not create an invalid choice" do
    assert_difference('Choice.count', 0) do
      post quiz_question_choices_url(@quiz, @question), params: { text: '77' }, as: :json
    end

    assert_response 422
  end 

  test "should delete a choice" do
    @choice = choices(:sixtyTwo)
    assert_difference('Choice.count', -1) do
      delete quiz_question_choice_url(@quiz, @question, @choice)
    end

    assert_response :success
  end
end
