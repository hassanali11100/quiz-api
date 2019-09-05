class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices, dependent: :destroy

  validates :text, presence: true, length: { maximum: 300 }
end
