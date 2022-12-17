class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :body, :user_id, :question_id, presence: true
end