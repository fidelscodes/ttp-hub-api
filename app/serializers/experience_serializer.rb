class ExperienceSerializer < ActiveModel::Serializer
  attributes :company_name, :position_title, :description, :start_date, :end_date, :volunteer
end
