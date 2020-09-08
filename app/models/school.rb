class School < ApplicationRecord
  has_many :contacts
  enum type: [:public_school, :mixed_school, :private_school]
end
