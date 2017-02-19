class SocialProfileSerializer < ActiveModel::Serializer
  attributes :linkedin, :github, :twitter, :facebook, :slack
end
