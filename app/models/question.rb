class Question < ApplicationRecord
  belongs_to :quiz

  validates :text, presence: true, length: { maximum: 300 }
end
