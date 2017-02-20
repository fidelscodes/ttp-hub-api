class EducationSerializer < ActiveModel::Serializer
  attributes :date, :school_name, :degree, :description

  def date
    "#{object.start_date.strftime("%B %Y")} - #{object.end_date.strftime("%B %Y")}"
  end
end
