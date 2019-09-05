class Choice < ApplicationRecord
  belongs_to :question
  has_one :answer, dependent: :destroy

  validates :is_correct?, inclusion: [true, false]
end
