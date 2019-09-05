class AnswersController < ApplicationController
    before_action :set_question

    def index
        @answer = @question.answer
        render json: @answer
    end

    def create
        @answer = @question.build_answer(question_params)
        if @answer.save
            render json: @answer, status: :created
        else
            render json: @answer.errors, status: :unprocessable_entity
        end
    end

    private 

    def set_question
        @question = Question.find(params[:question_id])
    end

    def question_params
        params.require(:answer).permit(:is_correct?, :choice_id)
    end
end
