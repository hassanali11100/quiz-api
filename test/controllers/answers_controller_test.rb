require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz = quizzes(:ImranBiography)
    @question = questions(:ImranAge)
    @correctChoice = choices(:sixtyTwo)
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post quiz_question_answers_url(@quiz, @question), params: { is_correct?: true, choice_id: @correctChoice.id }, as: :json
    end

    assert_response 201
  end

  test "should get index" do
    get quiz_question_answers_url(@quiz, @question)
    assert_response 200
  end
end
