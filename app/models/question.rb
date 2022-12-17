class Question < ApplicationRecord
  # could have made this polymorphic with Answer, but went with separate models instead
  has_many :answers, dependent: :destroy
  belongs_to :user

  validates :body, :user_id, :title, presence: true
end
