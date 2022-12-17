class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :user

  validates :body, :user_id, :title, presence: true
end
