class QuestionsController < ApplicationController
    before_action :set_quiz
    before_action :set_question, only: [:destroy]

    def index
        @questions = @quiz.questions
        render json: @questions
    end

    def create
        @question = @quiz.questions.new(question_params)
        if @question.save
            render json: @question, status: :created
        else
            render json: @question.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @question.destroy
    end

    private

    def set_quiz
        @quiz = Quiz.find(params[:quiz_id])
    end

    def set_question
        @question = Question.find(params[:id])
    end

    def question_params
        params.require(:question).permit(:text)
    end
end
