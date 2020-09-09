class Contact < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :i_email, presence: true

  belongs_to :school
  has_many :businesses
  has_many :users, through: :businesses

  def to_s
    name
  end
end
