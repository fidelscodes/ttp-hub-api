class Skill < ApplicationRecord
  has_many :applicant_skills
  has_many :applicants, through: :applicant_skills

  validates :name, presence: true
end
