class User < ApplicationRecord
  include ActiveModel::SecurePassword

  # could have used devise here, went with lower-weight bcrypt
  has_secure_password

  validates :name, :email, presence: true, uniqueness: true
  validates :password, presence: true

  attr_accessor :password_digest
  has_many :questions
  has_many :answers
end
