class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :user

  validates :body, :user_id, :title, presence: true

  scope :unanswered, -> { where.missing(:answers) }
  scope :answered, -> { left_outer_joins(:answers) }
  scope :accepted, -> { answered.where( answers: { accepted: true } ) }
  scope :unaccepted, -> { answered.where( answers: { accepted: false } ).uniq }

  def accepted?
    answers.accepted.any?
  end

  def unaccepted?
    !accepted?
  end

  def accepted_answer
    answers.accepted.first
  end

  def unaccepted_answers
    answers.unaccepted
  end
end
