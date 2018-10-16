class User < ApplicationRecord
  has_many :shifts, dependent: :destroy
  enum status: {
    medic: 0,
    interne: 1,
    interim: 2
  }
end
