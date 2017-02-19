class ProjectSerializer < ActiveModel::Serializer
  attributes :title, :description, :skills, :url
end
