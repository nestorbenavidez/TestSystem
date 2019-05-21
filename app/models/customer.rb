class Customer < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :projects
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone,:presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
end
