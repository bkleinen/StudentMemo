class Course < ActiveRecord::Base
  belongs_to :term
  has_many :groups
  has_and_belongs_to_many :students
end
