class ApplicantSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :email, :location, :summary
end
