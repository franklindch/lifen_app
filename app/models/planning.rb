class Planning < ApplicationRecord
  has_many :shifts, dependent: :destroy
end
