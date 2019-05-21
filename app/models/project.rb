class Project < ApplicationRecord
  has_and_belongs_to_many :customer
  validates :name, presence: true
  validates :description, presence: true
  validates :cost,:presence => true,
            :numericality => true
  enum status: [:inactive, :active]
end
