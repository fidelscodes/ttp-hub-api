class ApplicantSkill < ApplicationRecord
  belongs_to :applicant
  belongs_to :skill
end
