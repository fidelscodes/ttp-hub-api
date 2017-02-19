class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :company_name
end
