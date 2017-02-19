class Post < ApplicationRecord
  belongs_to :applicant
  belongs_to :employer
end
