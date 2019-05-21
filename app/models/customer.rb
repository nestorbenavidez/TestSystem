class Customer < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :projects
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone,:presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
  validate :validate_two_projects

  private

  def validate_two_projects
    if self.project_ids.count > 2
      errors.add( :project_ids, "The max number of active projects per person is 2")
    end
  end

end
