class User < ApplicationRecord
  has_secure_password

  # Validations
  validates :password, presence: true, length: { minimum: 8 }, if: -> { new_record? || !password.nil? }
  validates :password_confirmation, presence: true, if: -> { new_record? || !password.nil? }
end
