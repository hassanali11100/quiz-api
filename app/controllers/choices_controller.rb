class ChoicesController < ApplicationController
    before_action :set_question
    before_action :set_choice, only: [:destroy]
    
    def index
        render json: @question.choices
    end

    def create
        @choice = @question.choices.new(choice_params)
        if @choice.save
            render json: @choice, status: :created
        else
            render json: @choice.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @choice.destroy
    end

    private

    def set_question
        @question = Question.find(params[:question_id])
    end

    def set_choice
        @choice = Choice.find(params[:id])
    end

    def choice_params
        params.require(:choice).permit(:text, :is_correct?)
    end
end
