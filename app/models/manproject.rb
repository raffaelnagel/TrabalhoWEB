class Manproject < ActiveRecord::Base
  has_many:members
  has_one:project
  belongs_to :user
end
