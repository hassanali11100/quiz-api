class Question < ApplicationRecord
  belongs_to :quiz

  validates :text, presence: true
end
