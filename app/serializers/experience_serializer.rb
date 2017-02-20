class ExperienceSerializer < ActiveModel::Serializer
  attributes :date, :company_name, :position_title, :description,  :volunteer

  def date
    "#{object.start_date.strftime("%B %Y")} - #{object.end_date.strftime("%B %Y")}"
  end
end
