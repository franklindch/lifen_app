class Shift < ApplicationRecord
  belongs_to :planning
  belongs_to :user, optional: true
end
