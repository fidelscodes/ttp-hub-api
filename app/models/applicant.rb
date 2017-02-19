class Applicant < ApplicationRecord
  has_one :social_profile
  has_many :applications, class_name: 'Post'
  has_many :educations
  has_many :experiences
  has_many :interests
  has_many :projects
  has_many :applicant_skills
  has_many :skills, through: :applicant_skills
end
