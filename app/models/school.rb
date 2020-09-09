class School < ApplicationRecord
  validates :Rut, presence: true
  validates :rol_data_base, presence: true
  validates :name, presence: true
  validates :region, presence: true
  validates :comuna, presence: true
  validates :email, presence: true

  has_many :contacts, dependent: :destroy
  enum type_of_school: [:public_school, :mixed_school, :private_school]

  def to_s
    name
  end
end
