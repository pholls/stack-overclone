class User < ApplicationRecord
  include ActiveModel::SecurePassword

  has_secure_password

  attr_accessor :password_digest
  has_many :questions
  has_many :answers
end
