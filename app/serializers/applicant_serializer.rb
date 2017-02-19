class ApplicantSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :email, :location, :summary

  has_one :social_profile
  has_many :educations
  has_many :experiences
  has_many :projects

  # only return an array with skill names
  has_many :skills do
    object.skills.map(&:name)
  end
end
