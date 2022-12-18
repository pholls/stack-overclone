class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :user

  validates :body, :user_id, :title, presence: true

  scope :unanswered, -> { where.missing(:answers) }
  scope :answered, -> { joins(:answers) }
  scope :accepted, -> { answered.where( answers: { accepted: true } ) }

  def self.unaccepted
    answered.reject { |q| q.answers.any? { |answer| answer.accepted } }
  end

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
