class User < ApplicationRecord
  include ActiveModel::SecurePassword

  # could have used devise here, went with lower-weight bcrypt
  has_secure_password
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
end
