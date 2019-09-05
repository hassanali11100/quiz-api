class Choice < ApplicationRecord
  belongs_to :question

  validates :is_correct?, inclusion: [true, false]
end
