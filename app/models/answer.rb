class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :body, :user_id, :question_id, presence: true

  after_save :update_acceptance,
    if: Proc.new { |answer| answer.accepted? }

  scope :unaccepted, -> { where('accepted = false') }
  scope :accepted, -> { where('accepted = true') }

  private def update_acceptance
    other_answers.accepted.each do |answer|
      answer.unaccept!
    end
  end

  def other_answers
    question.answers.where.not(id: id)
  end

  def accept!
    update!(accepted: true)
  end

  def unaccept!
    update!(accepted: false)
  end

  def accepted?
    self.accepted
  end
end
