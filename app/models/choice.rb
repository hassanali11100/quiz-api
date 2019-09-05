class Choice < ApplicationRecord
  belongs_to :question

  validates :is_correct?, inclusion: { in: [true, false] }
end
