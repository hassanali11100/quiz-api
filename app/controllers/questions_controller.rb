class QuestionsController < ApplicationController
    before_action :set_quiz

    def index
        @questions = @quiz.questions
        render json: @questions
    end

    private

    def set_quiz
        @quiz = Quiz.find(params[:quiz_id])
    end
end
