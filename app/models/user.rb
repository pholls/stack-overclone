class User < ApplicationRecord
  include ActiveModel::SecurePassword

  has_secure_password

  validates :name, :email, presence: true, uniqueness: true
  validates :password, presence: true

  attr_accessor :password_digest
  has_many :questions
  has_many :answers
end
