class User < ApplicationRecord
  has_many :shifts, dependent: :destroy
  enum status: [
    0: :medic,
    1: :interne
  ]
end
