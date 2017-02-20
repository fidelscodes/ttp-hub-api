class Skill < ApplicationRecord
  has_many :applicant_skills
  has_many :applicants, through: :applicant_skills

  validates :name, presence: true, uniqueness: true

  before_save :downcase_name

  def downcase_name
    self.name.downcase
  end
end
