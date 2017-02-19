class EducationSerializer < ActiveModel::Serializer
  attributes :school_name, :degree, :description, :start_date, :end_date
end
