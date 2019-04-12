class User < ApplicationRecord
  validates_presence_of :name

  validates :email, uniqueness: true

  has_secure_password validations: false
end
